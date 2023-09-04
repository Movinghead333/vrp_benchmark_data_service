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
end
