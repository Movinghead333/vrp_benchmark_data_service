defmodule VrpBenchmarkDataService.SolversFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `VrpBenchmarkDataService.Solvers` context.
  """

  @doc """
  Generate a solver.
  """
  def solver_fixture(attrs \\ %{}) do
    {:ok, solver} =
      attrs
      |> Enum.into(%{
        name: "some name",
        version: "some version"
      })
      |> VrpBenchmarkDataService.Solvers.create_solver()

    solver
  end

  @doc """
  Generate a solver_parameter_spec.
  """
  def solver_parameter_spec_fixture(attrs \\ %{}) do
    {:ok, solver_parameter_spec} =
      attrs
      |> Enum.into(%{
        name: "some name",
        type: "some type"
      })
      |> VrpBenchmarkDataService.Solvers.create_solver_parameter_spec()

    solver_parameter_spec
  end

  @doc """
  Generate a solver_instance.
  """
  def solver_instance_fixture(attrs \\ %{}) do
    {:ok, solver_instance} =
      attrs
      |> Enum.into(%{

      })
      |> VrpBenchmarkDataService.Solvers.create_solver_instance()

    solver_instance
  end
end
