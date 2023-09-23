defmodule VrpBenchmarkDataService.Solutions do
  @moduledoc """
  The Solutions context.
  """

  import Ecto.Query, warn: false
  alias VrpBenchmarkDataService.BenchmarkSuites
  alias VrpBenchmarkDataService.Repo
  alias VrpBenchmarkDataService.Problems
  alias VrpBenchmarkDataService.Solvers

  alias VrpBenchmarkDataService.Solutions.Solution

  @doc """
  Returns the list of solutions.

  ## Examples

      iex> list_solutions()
      [%Solution{}, ...]

  """
  def list_solutions do
    Repo.all(Solution)
  end

  @doc """
  Gets a single solution.

  Raises `Ecto.NoResultsError` if the Solution does not exist.

  ## Examples

      iex> get_solution!(123)
      %Solution{}

      iex> get_solution!(456)
      ** (Ecto.NoResultsError)

  """
  def get_solution!(id), do: Repo.get!(Solution, id)

  @doc """
  Creates a solution.

  ## Examples

      iex> create_solution(%{field: value})
      {:ok, %Solution{}}

      iex> create_solution(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_solution(attrs \\ %{}) do
    %Solution{}
    |> Solution.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a solution.

  ## Examples

      iex> update_solution(solution, %{field: new_value})
      {:ok, %Solution{}}

      iex> update_solution(solution, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_solution(%Solution{} = solution, attrs) do
    solution
    |> Solution.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a solution.

  ## Examples

      iex> delete_solution(solution)
      {:ok, %Solution{}}

      iex> delete_solution(solution)
      {:error, %Ecto.Changeset{}}

  """
  def delete_solution(%Solution{} = solution) do
    Repo.delete(solution)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking solution changes.

  ## Examples

      iex> change_solution(solution)
      %Ecto.Changeset{data: %Solution{}}

  """
  def change_solution(%Solution{} = solution, attrs \\ %{}) do
    Solution.changeset(solution, attrs)
  end

  alias VrpBenchmarkDataService.Solutions.Route

  @doc """
  Returns the list of routes.

  ## Examples

      iex> list_routes()
      [%Route{}, ...]

  """
  def list_routes do
    Repo.all(Route)
  end

  @doc """
  Gets a single route.

  Raises `Ecto.NoResultsError` if the Route does not exist.

  ## Examples

      iex> get_route!(123)
      %Route{}

      iex> get_route!(456)
      ** (Ecto.NoResultsError)

  """
  def get_route!(id), do: Repo.get!(Route, id)

  @doc """
  Creates a route.

  ## Examples

      iex> create_route(%{field: value})
      {:ok, %Route{}}

      iex> create_route(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_route(attrs \\ %{}) do
    %Route{}
    |> Route.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a route.

  ## Examples

      iex> update_route(route, %{field: new_value})
      {:ok, %Route{}}

      iex> update_route(route, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_route(%Route{} = route, attrs) do
    route
    |> Route.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a route.

  ## Examples

      iex> delete_route(route)
      {:ok, %Route{}}

      iex> delete_route(route)
      {:error, %Ecto.Changeset{}}

  """
  def delete_route(%Route{} = route) do
    Repo.delete(route)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking route changes.

  ## Examples

      iex> change_route(route)
      %Ecto.Changeset{data: %Route{}}

  """
  def change_route(%Route{} = route, attrs \\ %{}) do
    Route.changeset(route, attrs)
  end

  alias VrpBenchmarkDataService.Solutions.RouteNodeRelation

  @doc """
  Returns the list of route_node_relation.

  ## Examples

      iex> list_route_node_relation()
      [%RouteNodeRelation{}, ...]

  """
  def list_route_node_relation do
    Repo.all(RouteNodeRelation)
  end

  @doc """
  Gets a single route_node_relation.

  Raises `Ecto.NoResultsError` if the Route node relation does not exist.

  ## Examples

      iex> get_route_node_relation!(123)
      %RouteNodeRelation{}

      iex> get_route_node_relation!(456)
      ** (Ecto.NoResultsError)

  """
  def get_route_node_relation!(id), do: Repo.get!(RouteNodeRelation, id)

  @doc """
  Creates a route_node_relation.

  ## Examples

      iex> create_route_node_relation(%{field: value})
      {:ok, %RouteNodeRelation{}}

      iex> create_route_node_relation(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_route_node_relation(attrs \\ %{}) do
    %RouteNodeRelation{}
    |> RouteNodeRelation.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a route_node_relation.

  ## Examples

      iex> update_route_node_relation(route_node_relation, %{field: new_value})
      {:ok, %RouteNodeRelation{}}

      iex> update_route_node_relation(route_node_relation, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_route_node_relation(%RouteNodeRelation{} = route_node_relation, attrs) do
    route_node_relation
    |> RouteNodeRelation.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a route_node_relation.

  ## Examples

      iex> delete_route_node_relation(route_node_relation)
      {:ok, %RouteNodeRelation{}}

      iex> delete_route_node_relation(route_node_relation)
      {:error, %Ecto.Changeset{}}

  """
  def delete_route_node_relation(%RouteNodeRelation{} = route_node_relation) do
    Repo.delete(route_node_relation)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking route_node_relation changes.

  ## Examples

      iex> change_route_node_relation(route_node_relation)
      %Ecto.Changeset{data: %RouteNodeRelation{}}

  """
  def change_route_node_relation(%RouteNodeRelation{} = route_node_relation, attrs \\ %{}) do
    RouteNodeRelation.changeset(route_node_relation, attrs)
  end

  # -------------------- Custom Functions Begin --------------------
  def create_complete_solution(%{
        "benchmark_suite_name" => benchmark_suite_name,
        "problem_json" => problem_json,
        "solver_instance_spec" => solver_instance_spec,
        "solution_json" => %{
          "is_valid" => is_valid,
          "seed" => seed,
          "computation_time" => computation_time,
          "objective_value" => objective_value,
          "penalized_objective_value" => penalized_objective_value,
          "routes" => routes
        }
      }) do
    benchmark_suite = BenchmarkSuites.get_benchmark_suite_for_name(benchmark_suite_name)

    problem = Problems.get_problem_for_name(Map.get(problem_json, "name"))
    problem_id = problem.id

    {:ok, solver_instance} =
      Solvers.get_solver_instance_for_solver_and_parameters(solver_instance_spec)

    solution_data = %{
      "benchmark_suite_id" => benchmark_suite.id,
      "problem_id" => problem_id,
      "solver_instance_id" => solver_instance.id,
      "is_valid" => is_valid,
      "seed" => seed,
      "computation_time" => computation_time,
      "objective_value" => objective_value,
      "penalized_objective_value" => penalized_objective_value
    }

    {:ok, solution} = create_solution(solution_data)

    Enum.each(routes, fn route ->
      duration = Map.get(route, "duration")
      node_names_list = Map.get(route, "nodes")
      number_of_nodes = length(node_names_list)
      start_node_name = Enum.at(node_names_list, 0)
      end_node_name = Enum.at(node_names_list, -1)

      vehicle =
        Problems.get_vehicle_for_problem_start_and_end_nodes(
          problem.name,
          start_node_name,
          end_node_name
        )

      route_data = %{
        "solution_id" => solution.id,
        "vehicle_id" => vehicle.id,
        "duration" => duration,
        "number_of_nodes" => number_of_nodes
      }

      {:ok, route} = create_route(route_data)

      Enum.with_index(node_names_list, fn node_name, index ->
        node = Problems.get_node_for_problem_and_node_name(problem.name, node_name)

        route_node_relation_data = %{
          "route_id" => route.id,
          "node_id" => node.id,
          "index_in_route" => index
        }

        {:ok, _route_node_relation} = create_route_node_relation(route_node_relation_data)
      end)
    end)

    {:ok, solution}
  end

  # --------------------- Custom Functions End ---------------------
end
