alias VrpBenchmarkDataService.Problems
alias VrpBenchmarkDataService.Enums.PrecedenceType
alias VrpBenchmarkDataService.Solutions
alias VrpBenchmarkDataService.Solvers
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

# Create problem
problem_1_complete_problem_data = %{
  "problem_data" => %{
    "name" => "Test Problem 1"
  },
  "node_data_list" => [
    %{
      "name" => "VS1",
      "x_pos" => 0,
      "y_pos" => 0,
      "volume_change" => 0,
      "service_time" => 0,
      "earliest_arrival_time" => 0,
      "latest_departure_time" => 120
    },
    %{
      "name" => "VE1",
      "x_pos" => 5,
      "y_pos" => 0,
      "volume_change" => 0,
      "service_time" => 0,
      "earliest_arrival_time" => 0,
      "latest_departure_time" => 120
    },
    %{
      "name" => "D",
      "x_pos" => 1,
      "y_pos" => 0,
      "volume_change" => 0,
      "service_time" => 10,
      "earliest_arrival_time" => 0,
      "latest_departure_time" => 120
    },
    %{
      "name" => "N1",
      "x_pos" => 2,
      "y_pos" => 0,
      "volume_change" => 0,
      "service_time" => 10,
      "earliest_arrival_time" => 0,
      "latest_departure_time" => 120
    },
    %{
      "name" => "N2",
      "x_pos" => 3,
      "y_pos" => 0,
      "volume_change" => 0,
      "service_time" => 10,
      "earliest_arrival_time" => 0,
      "latest_departure_time" => 120
    },
    %{
      "name" => "N3",
      "x_pos" => 4,
      "y_pos" => 0,
      "volume_change" => 0,
      "service_time" => 10,
      "earliest_arrival_time" => 0,
      "latest_departure_time" => 120
    }
  ],
  "vehicles_data_list" => [
    %{
      "name" => "V1",
      "capacity" => 10,
      "start_node_name" => "VS1",
      "end_node_name" => "VE1"
    }
  ],
  "travel_time_matrix" => [
    [0, 1, 2, 3, 4, 5],
    [1, 0, 1, 2, 3, 4],
    [2, 1, 0, 1, 2, 3],
    [3, 2, 1, 0, 1, 2],
    [4, 3, 2, 1, 0, 1],
    [5, 4, 3, 2, 1, 0]
  ],
  "precedence_data_list" => [
    %{
      "type" => PrecedenceType.OneToOne.value(),
      "precedence_node_relation_data_list" => [
        %{
          "node_name" => "N2",
          "is_preceeding" => true
        },
        %{
          "node_name" => "N1",
          "is_preceeding" => false
        }
      ]
    },
    %{
      "type" => PrecedenceType.OneToOne.value(),
      "precedence_node_relation_data_list" => [
        %{
          "node_name" => "N2",
          "is_preceeding" => true
        },
        %{
          "node_name" => "N3",
          "is_preceeding" => false
        }
      ]
    }
  ]
}

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
  "iterations" => "100"
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

# Create solution
problem_1_solver_1_instance_1_solution_1_data = %{
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
end)
