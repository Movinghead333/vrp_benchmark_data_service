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
end
