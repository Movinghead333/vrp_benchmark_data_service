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

  alias VrpBenchmarkDataService.Solvers.SolverInstance

  @doc """
  Returns the list of solver_instances.

  ## Examples

      iex> list_solver_instances()
      [%SolverInstance{}, ...]

  """
  def list_solver_instances do
    Repo.all(SolverInstance)
  end

  @doc """
  Gets a single solver_instance.

  Raises `Ecto.NoResultsError` if the Solver instance does not exist.

  ## Examples

      iex> get_solver_instance!(123)
      %SolverInstance{}

      iex> get_solver_instance!(456)
      ** (Ecto.NoResultsError)

  """
  def get_solver_instance!(id), do: Repo.get!(SolverInstance, id)

  @doc """
  Creates a solver_instance.

  ## Examples

      iex> create_solver_instance(%{field: value})
      {:ok, %SolverInstance{}}

      iex> create_solver_instance(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_solver_instance(attrs \\ %{}) do
    %SolverInstance{}
    |> SolverInstance.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a solver_instance.

  ## Examples

      iex> update_solver_instance(solver_instance, %{field: new_value})
      {:ok, %SolverInstance{}}

      iex> update_solver_instance(solver_instance, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_solver_instance(%SolverInstance{} = solver_instance, attrs) do
    solver_instance
    |> SolverInstance.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a solver_instance.

  ## Examples

      iex> delete_solver_instance(solver_instance)
      {:ok, %SolverInstance{}}

      iex> delete_solver_instance(solver_instance)
      {:error, %Ecto.Changeset{}}

  """
  def delete_solver_instance(%SolverInstance{} = solver_instance) do
    Repo.delete(solver_instance)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking solver_instance changes.

  ## Examples

      iex> change_solver_instance(solver_instance)
      %Ecto.Changeset{data: %SolverInstance{}}

  """
  def change_solver_instance(%SolverInstance{} = solver_instance, attrs \\ %{}) do
    SolverInstance.changeset(solver_instance, attrs)
  end

  alias VrpBenchmarkDataService.Solvers.SolverParameterInstance

  @doc """
  Returns the list of solver_parameter_instances.

  ## Examples

      iex> list_solver_parameter_instances()
      [%SolverParameterInstance{}, ...]

  """
  def list_solver_parameter_instances do
    Repo.all(SolverParameterInstance)
  end

  @doc """
  Gets a single solver_parameter_instance.

  Raises `Ecto.NoResultsError` if the Solver parameter instance does not exist.

  ## Examples

      iex> get_solver_parameter_instance!(123)
      %SolverParameterInstance{}

      iex> get_solver_parameter_instance!(456)
      ** (Ecto.NoResultsError)

  """
  def get_solver_parameter_instance!(id), do: Repo.get!(SolverParameterInstance, id)

  @doc """
  Creates a solver_parameter_instance.

  ## Examples

      iex> create_solver_parameter_instance(%{field: value})
      {:ok, %SolverParameterInstance{}}

      iex> create_solver_parameter_instance(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_solver_parameter_instance(attrs \\ %{}) do
    %SolverParameterInstance{}
    |> SolverParameterInstance.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a solver_parameter_instance.

  ## Examples

      iex> update_solver_parameter_instance(solver_parameter_instance, %{field: new_value})
      {:ok, %SolverParameterInstance{}}

      iex> update_solver_parameter_instance(solver_parameter_instance, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_solver_parameter_instance(%SolverParameterInstance{} = solver_parameter_instance, attrs) do
    solver_parameter_instance
    |> SolverParameterInstance.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a solver_parameter_instance.

  ## Examples

      iex> delete_solver_parameter_instance(solver_parameter_instance)
      {:ok, %SolverParameterInstance{}}

      iex> delete_solver_parameter_instance(solver_parameter_instance)
      {:error, %Ecto.Changeset{}}

  """
  def delete_solver_parameter_instance(%SolverParameterInstance{} = solver_parameter_instance) do
    Repo.delete(solver_parameter_instance)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking solver_parameter_instance changes.

  ## Examples

      iex> change_solver_parameter_instance(solver_parameter_instance)
      %Ecto.Changeset{data: %SolverParameterInstance{}}

  """
  def change_solver_parameter_instance(%SolverParameterInstance{} = solver_parameter_instance, attrs \\ %{}) do
    SolverParameterInstance.changeset(solver_parameter_instance, attrs)
  end
end
