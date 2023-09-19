alias VrpBenchmarkDataService.Problems
alias VrpBenchmarkDataService.Solutions
alias VrpBenchmarkDataService.Solvers
alias VrpBenchmarkDataService.BenchmarkSuites
# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     VrpBenchmarkDataService.Repo.insert!(%VrpBenchmarkDataService.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
defmodule Utility do
  def get_json(filename) do
    with {:ok, body} <- File.read(filename), {:ok, json} <- Poison.decode(body), do: {:ok, json}
  end
end

{:ok, problem_1_complete_problem_data} = Utility.get_json("data/test_problem_1.json")

IO.inspect(problem_1_complete_problem_data)

{:ok, problem_1} = Problems.create_complete_problem(problem_1_complete_problem_data)

# Create solver
solver_data = %{
  "name" => "G_SWO",
  "version" => "1.0.0",
  "parameter_specs" => [
    %{
      "name" => "iterations",
      "type" => "integer"
    }
  ]
}

{:ok, solver_1} = Solvers.create_solver(solver_data)

solver_parameter_specs_map =
  Enum.reduce(Map.get(solver_data, "parameter_specs"), %{}, fn solver_parameter_spec_data, acc ->
    solver_parameter_spec_data = Map.put_new(solver_parameter_spec_data, "solver_id", solver_1.id)

    {:ok, solver_parameter_spec} =
      Solvers.create_solver_parameter_spec(solver_parameter_spec_data)

    Map.put(acc, Map.get(solver_parameter_spec_data, "name"), solver_parameter_spec)
  end)

solver_1_instance_1_data = %{
  "solver_id" => solver_1.id
}

{:ok, solver_1_instance_1} = Solvers.create_solver_instance(solver_1_instance_1_data)

solver_parameter_instance_data_map = %{
  "iterations" => "20"
}

Enum.each(solver_parameter_instance_data_map, fn {parameter_name, parameter_value} ->
  solver_parameter_spec_id = Map.get(solver_parameter_specs_map, parameter_name).id

  solver_parameter_instance_data = %{
    "solver_instance_id" => solver_1_instance_1.id,
    "solver_parameter_spec_id" => solver_parameter_spec_id,
    "value" => parameter_value
  }

  {:ok, _solver_parameter_instance} =
    Solvers.create_solver_parameter_instance(solver_parameter_instance_data)
end)

# Create benchmark suite
benchmark_suite_data = %{
  "name" => "Sample benchmark suite",
  "runs_per_problem" => 1
}

{:ok, benchmark_suite} = BenchmarkSuites.create_benchmark_suite(benchmark_suite_data)

problems_in_benchmark_suite_data_list = [
  %{
    "benchmark_suite_id" => benchmark_suite.id,
    "problem_id" => problem_1.id
  }
]

Enum.each(problems_in_benchmark_suite_data_list, fn problems_in_benchmark_suite_data ->
  {:ok, _problems_in_benchmark_suite_relation} =
    BenchmarkSuites.create_problems_in_benchmark_suites_relation(problems_in_benchmark_suite_data)
end)

# Create solution
problem_1_solver_1_instance_1_solution_1_data = %{
  "benchmark_suite_id" => benchmark_suite.id,
  "problem_id" => problem_1.id,
  "solver_instance_id" => solver_1_instance_1.id,
  "is_valid" => true,
  "computation_time" => 1.5,
  "objective_value" => 10.0,
  "penalized_objective_value" => 10.0,
  "routes" => [
    ["VS1", "D", "N2", "N3", "N1", "VE1"]
  ]
}

{:ok, solution_1} = Solutions.create_solution(problem_1_solver_1_instance_1_solution_1_data)

Enum.each(Map.get(problem_1_solver_1_instance_1_solution_1_data, "routes"), fn node_names_list ->
  number_of_nodes = length(node_names_list)
  start_node_name = Enum.at(node_names_list, 0)
  end_node_name = Enum.at(node_names_list, -1)

  vehicle =
    Problems.get_vehicle_for_problem_start_and_end_nodes(
      problem_1.name,
      start_node_name,
      end_node_name
    )

  route_data = %{
    "solution_id" => solution_1.id,
    "vehicle_id" => vehicle.id,
    "duration" => 10,
    "number_of_nodes" => number_of_nodes
  }

  {:ok, route} = Solutions.create_route(route_data)

  Enum.with_index(node_names_list, fn node_name, index ->
    node = Problems.get_node_for_problem_and_node_name(problem_1.name, node_name)

    route_node_relation_data = %{
      "route_id" => route.id,
      "node_id" => node.id,
      "index_in_route" => index
    }

    {:ok, _route_node_relation} = Solutions.create_route_node_relation(route_node_relation_data)
  end)
end)
