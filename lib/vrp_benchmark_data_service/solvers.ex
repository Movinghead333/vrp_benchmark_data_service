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
  def update_solver_parameter_instance(
        %SolverParameterInstance{} = solver_parameter_instance,
        attrs
      ) do
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
  def change_solver_parameter_instance(
        %SolverParameterInstance{} = solver_parameter_instance,
        attrs \\ %{}
      ) do
    SolverParameterInstance.changeset(solver_parameter_instance, attrs)
  end

  # -------------------- Custom Functions Begin --------------------
  def get_solver_for_name_and_version(name, version) do
    query =
      from(solver in Solver,
        preload: [:solver_parameter_specs, solver_instances: [:solver_parameter_instances]],
        where: solver.name == ^name,
        where: solver.version == ^version
      )

    Repo.one(query)
  end

  def get_solver_instance_for_solver_and_parameters(%{
        "solver_name" => solver_name,
        "solver_version" => solver_version,
        "parameter_settings" => parameter_settings
      }) do
    # Get matching solver from db
    solver = get_solver_for_name_and_version(solver_name, solver_version)

    # Build mapping from parameter names to parameter specs so we can later map
    # names to ids when comparing solver instances.
    parameter_name_to_parameter_spec_id =
      Enum.reduce(solver.solver_parameter_specs, %{}, fn solver_parameter_spec, acc ->
        Map.put(acc, solver_parameter_spec.name, solver_parameter_spec.id)
      end)

    # Using the mapping we just created we can convert the parameters of the input solver instance into mapping from
    # parameter spec ids to the actual values.
    parameter_settings =
      Enum.reduce(parameter_settings, %{}, fn {parameter_name, parameter_value}, acc ->
        parameter_spec_id = Map.get(parameter_name_to_parameter_spec_id, parameter_name)
        Map.put(acc, parameter_spec_id, parameter_value)
      end)

    # With the mapping we just created, we can search through all instances of the given solver and try to find a
    # matching one.
    solver_instance =
      Enum.find(solver.solver_instances, nil, fn solver_instance ->
        current_parameter_settings =
          Enum.reduce(
            solver_instance.solver_parameter_instances,
            %{},
            fn solver_parameter_instance, acc ->
              Map.put(
                acc,
                solver_parameter_instance.solver_parameter_spec_id,
                solver_parameter_instance.value
              )
            end
          )

        Enum.reduce(Map.keys(current_parameter_settings), true, fn parameter_spec_id, acc ->
          values_equal =
            Map.get(current_parameter_settings, parameter_spec_id) ==
              Map.get(parameter_settings, parameter_spec_id)

          acc and values_equal
        end)
      end)

    if is_nil(solver_instance) do
      {:error, "Solver instance could not be found."}
    else
      {:ok, solver_instance}
    end
  end

  def create_complete_solver(
        %{
          "name" => name,
          "version" => version,
          "parameter_specs" => parameter_specs
        } = solver_specification
      ) do
    {:ok, solver} = create_solver(solver_specification)

    solver_parameter_specs_map =
      Enum.reduce(parameter_specs, %{}, fn solver_parameter_spec_data, acc ->
        solver_parameter_spec_data =
          Map.put_new(solver_parameter_spec_data, "solver_id", solver.id)

        {:ok, solver_parameter_spec} = create_solver_parameter_spec(solver_parameter_spec_data)
      end)

    {:ok, solver}
  end

  @doc """
  Create a new instance for a given solver with a map of parameter settings
  """
  def create_complete_solver_instance(
        %{
          "name" => name,
          "version" => version,
          "parameter_settings" => parameter_settings
        } = solver_instance_specification
      ) do
    solver = get_solver_for_name_and_version(name, version)

    {:ok, solver_instance} = create_solver_instance(%{"solver_id" => solver.id})

    solver_parameter_specs_map =
      Enum.reduce(solver.solver_parameter_specs, %{}, fn solver_parameter_spec, acc ->
        Map.put(acc, solver_parameter_spec.name, solver_parameter_spec)
      end)

    IO.inspect(solver_parameter_specs_map)
    IO.inspect(parameter_settings)

    Enum.each(parameter_settings, fn {parameter_name, parameter_value} ->
      solver_parameter_spec_id = Map.get(solver_parameter_specs_map, parameter_name).id

      solver_parameter_instance_data = %{
        "solver_instance_id" => solver_instance.id,
        "solver_parameter_spec_id" => solver_parameter_spec_id,
        "value" => parameter_value
      }

      {:ok, _solver_parameter_instance} =
        create_solver_parameter_instance(solver_parameter_instance_data)
    end)

    {:ok, solver_instance}
  end

  # --------------------- Custom Functions End ---------------------
end
