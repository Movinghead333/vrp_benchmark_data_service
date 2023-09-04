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

# Create problems
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

# Create nodes
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

# Create vehicles
p1_vehicle_data_list = [
  %{
    name: "V1",
    capacity: 10,
    problem_id: p1.id,
    start_node_id: p1_vs1.id,
    end_node_id: p1_ve1.id
  }
]

p1_vehicles =
  for vehicle_data <- p1_vehicle_data_list do
    {:ok, vehicle} = Problems.create_vehicle(vehicle_data)
    vehicle
  end

[p1_v1] = p1_vehicles

# Create metric_entries
p1_travel_time_matrix = [
  [0, 1, 2, 3, 4, 5],
  [1, 0, 1, 2, 3, 4],
  [2, 1, 0, 1, 2, 3],
  [3, 2, 1, 0, 1, 2],
  [4, 3, 2, 1, 0, 1],
  [5, 4, 3, 2, 1, 0]
]

Enum.with_index(p1_nodes, fn from_node, from_index ->
  Enum.with_index(p1_nodes, fn to_node, to_index ->
    travel_time_row = Enum.at(p1_travel_time_matrix, from_index)
    travel_time = Enum.at(travel_time_row, to_index)

    metric_entry_data = %{
      travel_time: travel_time,
      problem_id: p1.id,
      from_node_id: from_node.id,
      to_node_id: to_node.id
    }

    {:ok, _metric_entry} = Problems.create_metric_entry(metric_entry_data)
  end)
end)
