defmodule VrpBenchmarkDataService.BenchmarkSuitesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `VrpBenchmarkDataService.BenchmarkSuites` context.
  """

  @doc """
  Generate a benchmark_suite.
  """
  def benchmark_suite_fixture(attrs \\ %{}) do
    {:ok, benchmark_suite} =
      attrs
      |> Enum.into(%{
        name: "some name",
        runs_per_problem: 42
      })
      |> VrpBenchmarkDataService.BenchmarkSuites.create_benchmark_suite()

    benchmark_suite
  end

  @doc """
  Generate a problems_in_benchmark_suites_relation.
  """
  def problems_in_benchmark_suites_relation_fixture(attrs \\ %{}) do
    {:ok, problems_in_benchmark_suites_relation} =
      attrs
      |> Enum.into(%{

      })
      |> VrpBenchmarkDataService.BenchmarkSuites.create_problems_in_benchmark_suites_relation()

    problems_in_benchmark_suites_relation
  end
end
