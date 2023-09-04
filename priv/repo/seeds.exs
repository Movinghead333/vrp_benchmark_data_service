alias VrpBenchmarkDataService.Problems
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

problem_data_list = [
  %{
    name: "Testproblem 1"
  },
  %{
    name: "Testproblem 1"
  }
]

problems =
  for problem_data <- problem_data_list do
    {:ok, problem} = Problems.create_problem(problem_data)
    problem
  end

[p1, p2] = problems

p1_node_data_list = [
  %{
    problem_id: p1.id,
    name: "VS1",
    volume_change: 0,
    service_time: 0,
    earliest_arrival_time: 0,
    latest_departure_time: 120
  },
  %{
    problem_id: p1.id,
    name: "VE1",
    volume_change: 0,
    service_time: 0,
    earliest_arrival_time: 0,
    latest_departure_time: 120
  },
  %{
    problem_id: p1.id,
    name: "D",
    volume_change: 0,
    service_time: 10,
    earliest_arrival_time: 0,
    latest_departure_time: 120
  },
  %{
    problem_id: p1.id,
    name: "N1",
    volume_change: 0,
    service_time: 10,
    earliest_arrival_time: 0,
    latest_departure_time: 120
  },
  %{
    problem_id: p1.id,
    name: "N2",
    volume_change: 0,
    service_time: 10,
    earliest_arrival_time: 0,
    latest_departure_time: 120
  },
  %{
    problem_id: p1.id,
    name: "N3",
    volume_change: 0,
    service_time: 10,
    earliest_arrival_time: 0,
    latest_departure_time: 120
  }
]

p1_nodes =
  for node_data <- p1_node_data_list do
    {:ok, node} = Problems.create_node(node_data)
    node
  end

[p1_vs1, p1_ve1, p1_d, p1_n1, p1_n2, p1_n3] = p1_nodes
