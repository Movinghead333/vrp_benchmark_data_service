alias VrpBenchmarkDataService.Problems
alias VrpBenchmarkDataService.Enums.PrecedenceType
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

test_problem_1_complete_problem_data = %{
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

Problems.create_complete_problem(test_problem_1_complete_problem_data)
