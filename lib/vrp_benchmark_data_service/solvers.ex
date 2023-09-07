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
end
