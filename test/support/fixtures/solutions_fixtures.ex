defmodule VrpBenchmarkDataService.SolutionsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `VrpBenchmarkDataService.Solutions` context.
  """

  @doc """
  Generate a solution.
  """
  def solution_fixture(attrs \\ %{}) do
    {:ok, solution} =
      attrs
      |> Enum.into(%{
        computation_time: 120.5,
        is_valid: true,
        objective_value: 120.5,
        penalized_objective_value: 120.5
      })
      |> VrpBenchmarkDataService.Solutions.create_solution()

    solution
  end

  @doc """
  Generate a route.
  """
  def route_fixture(attrs \\ %{}) do
    {:ok, route} =
      attrs
      |> Enum.into(%{
        duration: 42,
        number_of_nodes: 42
      })
      |> VrpBenchmarkDataService.Solutions.create_route()

    route
  end
end
