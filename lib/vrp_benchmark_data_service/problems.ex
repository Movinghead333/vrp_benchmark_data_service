defmodule VrpBenchmarkDataService.Problems do
  @moduledoc """
  The Problems context.
  """

  import Ecto.Query, warn: false
  alias VrpBenchmarkDataService.Repo

  alias VrpBenchmarkDataService.Problems.Problem

  @doc """
  Returns the list of problems.

  ## Examples

      iex> list_problems()
      [%Problem{}, ...]

  """
  def list_problems do
    Repo.all(Problem)
  end

  @doc """
  Gets a single problem.

  Raises `Ecto.NoResultsError` if the Problem does not exist.

  ## Examples

      iex> get_problem!(123)
      %Problem{}

      iex> get_problem!(456)
      ** (Ecto.NoResultsError)

  """
  def get_problem!(id), do: Repo.get!(Problem, id)

  @doc """
  Creates a problem.

  ## Examples

      iex> create_problem(%{field: value})
      {:ok, %Problem{}}

      iex> create_problem(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_problem(attrs \\ %{}) do
    %Problem{}
    |> Problem.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a problem.

  ## Examples

      iex> update_problem(problem, %{field: new_value})
      {:ok, %Problem{}}

      iex> update_problem(problem, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_problem(%Problem{} = problem, attrs) do
    problem
    |> Problem.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a problem.

  ## Examples

      iex> delete_problem(problem)
      {:ok, %Problem{}}

      iex> delete_problem(problem)
      {:error, %Ecto.Changeset{}}

  """
  def delete_problem(%Problem{} = problem) do
    Repo.delete(problem)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking problem changes.

  ## Examples

      iex> change_problem(problem)
      %Ecto.Changeset{data: %Problem{}}

  """
  def change_problem(%Problem{} = problem, attrs \\ %{}) do
    Problem.changeset(problem, attrs)
  end

  alias VrpBenchmarkDataService.Problems.Node

  @doc """
  Returns the list of nodes.

  ## Examples

      iex> list_nodes()
      [%Node{}, ...]

  """
  def list_nodes do
    Repo.all(Node)
  end

  @doc """
  Gets a single node.

  Raises `Ecto.NoResultsError` if the Node does not exist.

  ## Examples

      iex> get_node!(123)
      %Node{}

      iex> get_node!(456)
      ** (Ecto.NoResultsError)

  """
  def get_node!(id), do: Repo.get!(Node, id)

  @doc """
  Creates a node.

  ## Examples

      iex> create_node(%{field: value})
      {:ok, %Node{}}

      iex> create_node(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_node(attrs \\ %{}) do
    %Node{}
    |> Node.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a node.

  ## Examples

      iex> update_node(node, %{field: new_value})
      {:ok, %Node{}}

      iex> update_node(node, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_node(%Node{} = node, attrs) do
    node
    |> Node.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a node.

  ## Examples

      iex> delete_node(node)
      {:ok, %Node{}}

      iex> delete_node(node)
      {:error, %Ecto.Changeset{}}

  """
  def delete_node(%Node{} = node) do
    Repo.delete(node)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking node changes.

  ## Examples

      iex> change_node(node)
      %Ecto.Changeset{data: %Node{}}

  """
  def change_node(%Node{} = node, attrs \\ %{}) do
    Node.changeset(node, attrs)
  end

  alias VrpBenchmarkDataService.Problems.Vehicle

  @doc """
  Returns the list of vehicles.

  ## Examples

      iex> list_vehicles()
      [%Vehicle{}, ...]

  """
  def list_vehicles do
    Repo.all(Vehicle)
  end

  @doc """
  Gets a single vehicle.

  Raises `Ecto.NoResultsError` if the Vehicle does not exist.

  ## Examples

      iex> get_vehicle!(123)
      %Vehicle{}

      iex> get_vehicle!(456)
      ** (Ecto.NoResultsError)

  """
  def get_vehicle!(id), do: Repo.get!(Vehicle, id)

  @doc """
  Creates a vehicle.

  ## Examples

      iex> create_vehicle(%{field: value})
      {:ok, %Vehicle{}}

      iex> create_vehicle(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_vehicle(attrs \\ %{}) do
    %Vehicle{}
    |> Vehicle.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a vehicle.

  ## Examples

      iex> update_vehicle(vehicle, %{field: new_value})
      {:ok, %Vehicle{}}

      iex> update_vehicle(vehicle, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_vehicle(%Vehicle{} = vehicle, attrs) do
    vehicle
    |> Vehicle.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a vehicle.

  ## Examples

      iex> delete_vehicle(vehicle)
      {:ok, %Vehicle{}}

      iex> delete_vehicle(vehicle)
      {:error, %Ecto.Changeset{}}

  """
  def delete_vehicle(%Vehicle{} = vehicle) do
    Repo.delete(vehicle)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking vehicle changes.

  ## Examples

      iex> change_vehicle(vehicle)
      %Ecto.Changeset{data: %Vehicle{}}

  """
  def change_vehicle(%Vehicle{} = vehicle, attrs \\ %{}) do
    Vehicle.changeset(vehicle, attrs)
  end
end
