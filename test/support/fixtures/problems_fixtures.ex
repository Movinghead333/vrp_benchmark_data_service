defmodule VrpBenchmarkDataService.ProblemsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `VrpBenchmarkDataService.Problems` context.
  """

  @doc """
  Generate a problem.
  """
  def problem_fixture(attrs \\ %{}) do
    {:ok, problem} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> VrpBenchmarkDataService.Problems.create_problem()

    problem
  end

  @doc """
  Generate a node.
  """
  def node_fixture(attrs \\ %{}) do
    {:ok, node} =
      attrs
      |> Enum.into(%{
        earliest_arrival_time: 42,
        latest_departure_time: 42,
        name: "some name",
        service_time: 42,
        volume_change: 42
      })
      |> VrpBenchmarkDataService.Problems.create_node()

    node
  end

  @doc """
  Generate a vehicle.
  """
  def vehicle_fixture(attrs \\ %{}) do
    {:ok, vehicle} =
      attrs
      |> Enum.into(%{
        capacity: 42
      })
      |> VrpBenchmarkDataService.Problems.create_vehicle()

    vehicle
  end
end
