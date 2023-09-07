defmodule VrpBenchmarkDataService.Solvers do
  @moduledoc """
  The Solvers context.
  """

  import Ecto.Query, warn: false
  alias VrpBenchmarkDataService.Repo

  alias VrpBenchmarkDataService.Solvers.Solver

  @doc """
  Returns the list of solvers.

  ## Examples

      iex> list_solvers()
      [%Solver{}, ...]

  """
  def list_solvers do
    Repo.all(Solver)
  end

  @doc """
  Gets a single solver.

  Raises `Ecto.NoResultsError` if the Solver does not exist.

  ## Examples

      iex> get_solver!(123)
      %Solver{}

      iex> get_solver!(456)
      ** (Ecto.NoResultsError)

  """
  def get_solver!(id), do: Repo.get!(Solver, id)

  @doc """
  Creates a solver.

  ## Examples

      iex> create_solver(%{field: value})
      {:ok, %Solver{}}

      iex> create_solver(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_solver(attrs \\ %{}) do
    %Solver{}
    |> Solver.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a solver.

  ## Examples

      iex> update_solver(solver, %{field: new_value})
      {:ok, %Solver{}}

      iex> update_solver(solver, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_solver(%Solver{} = solver, attrs) do
    solver
    |> Solver.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a solver.

  ## Examples

      iex> delete_solver(solver)
      {:ok, %Solver{}}

      iex> delete_solver(solver)
      {:error, %Ecto.Changeset{}}

  """
  def delete_solver(%Solver{} = solver) do
    Repo.delete(solver)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking solver changes.

  ## Examples

      iex> change_solver(solver)
      %Ecto.Changeset{data: %Solver{}}

  """
  def change_solver(%Solver{} = solver, attrs \\ %{}) do
    Solver.changeset(solver, attrs)
  end

  alias VrpBenchmarkDataService.Solvers.SolverParameterSpec

  @doc """
  Returns the list of solver_parameter_specs.

  ## Examples

      iex> list_solver_parameter_specs()
      [%SolverParameterSpec{}, ...]

  """
  def list_solver_parameter_specs do
    Repo.all(SolverParameterSpec)
  end

  @doc """
  Gets a single solver_parameter_spec.

  Raises `Ecto.NoResultsError` if the Solver parameter spec does not exist.

  ## Examples

      iex> get_solver_parameter_spec!(123)
      %SolverParameterSpec{}

      iex> get_solver_parameter_spec!(456)
      ** (Ecto.NoResultsError)

  """
  def get_solver_parameter_spec!(id), do: Repo.get!(SolverParameterSpec, id)

  @doc """
  Creates a solver_parameter_spec.

  ## Examples

      iex> create_solver_parameter_spec(%{field: value})
      {:ok, %SolverParameterSpec{}}

      iex> create_solver_parameter_spec(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_solver_parameter_spec(attrs \\ %{}) do
    %SolverParameterSpec{}
    |> SolverParameterSpec.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a solver_parameter_spec.

  ## Examples

      iex> update_solver_parameter_spec(solver_parameter_spec, %{field: new_value})
      {:ok, %SolverParameterSpec{}}

      iex> update_solver_parameter_spec(solver_parameter_spec, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_solver_parameter_spec(%SolverParameterSpec{} = solver_parameter_spec, attrs) do
    solver_parameter_spec
    |> SolverParameterSpec.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a solver_parameter_spec.

  ## Examples

      iex> delete_solver_parameter_spec(solver_parameter_spec)
      {:ok, %SolverParameterSpec{}}

      iex> delete_solver_parameter_spec(solver_parameter_spec)
      {:error, %Ecto.Changeset{}}

  """
  def delete_solver_parameter_spec(%SolverParameterSpec{} = solver_parameter_spec) do
    Repo.delete(solver_parameter_spec)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking solver_parameter_spec changes.

  ## Examples

      iex> change_solver_parameter_spec(solver_parameter_spec)
      %Ecto.Changeset{data: %SolverParameterSpec{}}

  """
  def change_solver_parameter_spec(%SolverParameterSpec{} = solver_parameter_spec, attrs \\ %{}) do
    SolverParameterSpec.changeset(solver_parameter_spec, attrs)
  end
end
