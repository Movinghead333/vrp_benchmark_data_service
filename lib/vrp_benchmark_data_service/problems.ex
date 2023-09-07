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

  alias VrpBenchmarkDataService.Problems.MetricEntry

  @doc """
  Returns the list of metric_entries.

  ## Examples

      iex> list_metric_entries()
      [%MetricEntry{}, ...]

  """
  def list_metric_entries do
    Repo.all(MetricEntry)
  end

  @doc """
  Gets a single metric_entry.

  Raises `Ecto.NoResultsError` if the Metric entry does not exist.

  ## Examples

      iex> get_metric_entry!(123)
      %MetricEntry{}

      iex> get_metric_entry!(456)
      ** (Ecto.NoResultsError)

  """
  def get_metric_entry!(id), do: Repo.get!(MetricEntry, id)

  @doc """
  Creates a metric_entry.

  ## Examples

      iex> create_metric_entry(%{field: value})
      {:ok, %MetricEntry{}}

      iex> create_metric_entry(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_metric_entry(attrs \\ %{}) do
    %MetricEntry{}
    |> MetricEntry.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a metric_entry.

  ## Examples

      iex> update_metric_entry(metric_entry, %{field: new_value})
      {:ok, %MetricEntry{}}

      iex> update_metric_entry(metric_entry, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_metric_entry(%MetricEntry{} = metric_entry, attrs) do
    metric_entry
    |> MetricEntry.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a metric_entry.

  ## Examples

      iex> delete_metric_entry(metric_entry)
      {:ok, %MetricEntry{}}

      iex> delete_metric_entry(metric_entry)
      {:error, %Ecto.Changeset{}}

  """
  def delete_metric_entry(%MetricEntry{} = metric_entry) do
    Repo.delete(metric_entry)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking metric_entry changes.

  ## Examples

      iex> change_metric_entry(metric_entry)
      %Ecto.Changeset{data: %MetricEntry{}}

  """
  def change_metric_entry(%MetricEntry{} = metric_entry, attrs \\ %{}) do
    MetricEntry.changeset(metric_entry, attrs)
  end

  alias VrpBenchmarkDataService.Problems.Precedence

  @doc """
  Returns the list of precendences.

  ## Examples

      iex> list_precendences()
      [%Precedence{}, ...]

  """
  def list_precendences do
    Repo.all(Precedence)
  end

  @doc """
  Gets a single precedence.

  Raises `Ecto.NoResultsError` if the Precedence does not exist.

  ## Examples

      iex> get_precedence!(123)
      %Precedence{}

      iex> get_precedence!(456)
      ** (Ecto.NoResultsError)

  """
  def get_precedence!(id), do: Repo.get!(Precedence, id)

  @doc """
  Creates a precedence.

  ## Examples

      iex> create_precedence(%{field: value})
      {:ok, %Precedence{}}

      iex> create_precedence(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_precedence(attrs \\ %{}) do
    %Precedence{}
    |> Precedence.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a precedence.

  ## Examples

      iex> update_precedence(precedence, %{field: new_value})
      {:ok, %Precedence{}}

      iex> update_precedence(precedence, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_precedence(%Precedence{} = precedence, attrs) do
    precedence
    |> Precedence.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a precedence.

  ## Examples

      iex> delete_precedence(precedence)
      {:ok, %Precedence{}}

      iex> delete_precedence(precedence)
      {:error, %Ecto.Changeset{}}

  """
  def delete_precedence(%Precedence{} = precedence) do
    Repo.delete(precedence)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking precedence changes.

  ## Examples

      iex> change_precedence(precedence)
      %Ecto.Changeset{data: %Precedence{}}

  """
  def change_precedence(%Precedence{} = precedence, attrs \\ %{}) do
    Precedence.changeset(precedence, attrs)
  end

  alias VrpBenchmarkDataService.Problems.PrecedenceNodeRelation

  @doc """
  Returns the list of precedence_node_relation.

  ## Examples

      iex> list_precedence_node_relation()
      [%PrecedenceNodeRelation{}, ...]

  """
  def list_precedence_node_relation do
    Repo.all(PrecedenceNodeRelation)
  end

  @doc """
  Gets a single precedence_node_relation.

  Raises `Ecto.NoResultsError` if the Precedence node relation does not exist.

  ## Examples

      iex> get_precedence_node_relation!(123)
      %PrecedenceNodeRelation{}

      iex> get_precedence_node_relation!(456)
      ** (Ecto.NoResultsError)

  """
  def get_precedence_node_relation!(id), do: Repo.get!(PrecedenceNodeRelation, id)

  @doc """
  Creates a precedence_node_relation.

  ## Examples

      iex> create_precedence_node_relation(%{field: value})
      {:ok, %PrecedenceNodeRelation{}}

      iex> create_precedence_node_relation(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_precedence_node_relation(attrs \\ %{}) do
    %PrecedenceNodeRelation{}
    |> PrecedenceNodeRelation.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a precedence_node_relation.

  ## Examples

      iex> update_precedence_node_relation(precedence_node_relation, %{field: new_value})
      {:ok, %PrecedenceNodeRelation{}}

      iex> update_precedence_node_relation(precedence_node_relation, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_precedence_node_relation(%PrecedenceNodeRelation{} = precedence_node_relation, attrs) do
    precedence_node_relation
    |> PrecedenceNodeRelation.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a precedence_node_relation.

  ## Examples

      iex> delete_precedence_node_relation(precedence_node_relation)
      {:ok, %PrecedenceNodeRelation{}}

      iex> delete_precedence_node_relation(precedence_node_relation)
      {:error, %Ecto.Changeset{}}

  """
  def delete_precedence_node_relation(%PrecedenceNodeRelation{} = precedence_node_relation) do
    Repo.delete(precedence_node_relation)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking precedence_node_relation changes.

  ## Examples

      iex> change_precedence_node_relation(precedence_node_relation)
      %Ecto.Changeset{data: %PrecedenceNodeRelation{}}

  """
  def change_precedence_node_relation(
        %PrecedenceNodeRelation{} = precedence_node_relation,
        attrs \\ %{}
      ) do
    PrecedenceNodeRelation.changeset(precedence_node_relation, attrs)
  end

  # -------------------- Custom Functions Begin --------------------
  def create_complete_problem(%{
        "problem_data" => problem_data,
        "node_data_list" => node_data_list,
        "vehicles_data_list" => vehicle_data_list,
        "travel_time_matrix" => travel_time_matrix,
        "precedence_data_list" => precedence_data_list
      }) do
    IO.inspect(problem_data)

    {:ok, problem} = create_problem(problem_data)

    # Create nodes
    nodes =
      for node_data <- node_data_list do
        node_data = Map.put(node_data, "problem_id", problem.id)
        {:ok, node} = create_node(node_data)
        node
      end

    node_map =
      Enum.reduce(nodes, %{}, fn node, acc ->
        Map.put_new(acc, node.name, node.id)
      end)

    # Create vehicles
    _vehicles =
      for vehicle_data <- vehicle_data_list do
        start_node_name = Map.get(vehicle_data, "start_node_name")
        start_node_id = Map.get(node_map, start_node_name)
        end_node_name = Map.get(vehicle_data, "end_node_name")
        end_node_id = Map.get(node_map, end_node_name)

        vehicle_data =
          vehicle_data
          |> Map.put("problem_id", problem.id)
          |> Map.put("start_node_id", start_node_id)
          |> Map.put("end_node_id", end_node_id)

        {:ok, vehicle} = create_vehicle(vehicle_data)
        vehicle
      end

    # Create metric_entries
    Enum.with_index(nodes, fn from_node, from_index ->
      Enum.with_index(nodes, fn to_node, to_index ->
        travel_time_row = Enum.at(travel_time_matrix, from_index)
        travel_time = Enum.at(travel_time_row, to_index)

        metric_entry_data = %{
          "travel_time" => travel_time,
          "problem_id" => problem.id,
          "from_node_id" => from_node.id,
          "to_node_id" => to_node.id
        }

        {:ok, _metric_entry} = create_metric_entry(metric_entry_data)
      end)
    end)

    # Create precedences
    Enum.each(precedence_data_list, fn precedence_data ->
      precedence_data = Map.put(precedence_data, "problem_id", problem.id)

      {:ok, precedence} = create_precedence(precedence_data)

      Enum.each(
        Map.get(precedence_data, "precedence_node_relation_data_list"),
        fn precedence_node_relation_data ->
          precedence_node_relation_data =
            Map.put(precedence_node_relation_data, "precedence_id", precedence.id)

          # Convert node name to id
          node_name = Map.get(precedence_node_relation_data, "node_name")
          node_id = Map.get(node_map, node_name)

          precedence_node_relation_data =
            Map.put(precedence_node_relation_data, "node_id", node_id)

          {:ok, _precedence_node_relation} =
            create_precedence_node_relation(precedence_node_relation_data)
        end
      )
    end)

    {:ok, problem}
  end

  # Test with: VrpBenchmarkDataService.Problems.get_complete_problem("Test Problem 1")
  def get_complete_problem(problem_name) do
    query =
      from(problem in Problem,
        where: problem.name == ^problem_name,
        preload: [
          :nodes,
          :metric_entries,
          vehicles: [:start_node, :end_node],
          precedences: :precedence_node_relation_entries
        ]
      )

    Repo.one(query)
  end

  def convert_complete_problem_to_json(complete_problem) do
    problem_data = %{
      "name" => complete_problem.name
    }

    node_data_list =
      for node <- complete_problem.nodes do
        %{
          "name" => node.name,
          "x_pos" => node.x_pos,
          "y_pos" => node.y_pos,
          "volume_change" => node.volume_change,
          "service_time" => node.service_time,
          "earliest_arrival_time" => node.earliest_arrival_time,
          "latest_departure_time" => node.latest_departure_time
        }
      end

    vehicles_data_list =
      for vehicle <- complete_problem.vehicles do
        %{
          "name" => vehicle.name,
          "capacity" => vehicle.capacity,
          "start_node_name" => vehicle.start_node.name,
          "end_node_name" => vehicle.end_node.name
        }
      end

    acc = Enum.reduce(complete_problem.nodes, %{}, fn node, acc -> Map.put(acc, node.id, %{}) end)

    matrix_entry_lookup_table =
      Enum.reduce(complete_problem.metric_entries, acc, fn metric_entry, acc ->
        row_map =
          Map.get(acc, metric_entry.from_node_id)
          |> Map.put(metric_entry.to_node_id, metric_entry.travel_time)

        Map.put(acc, metric_entry.from_node_id, row_map)
      end)

    node_ids = Enum.map(complete_problem.nodes, fn node -> node.id end)

    travel_time_matrix =
      Enum.reduce(node_ids, [], fn from_node_id, acc ->
        matrix_row =
          for to_node_id <- node_ids do
            lookup_row = Map.get(matrix_entry_lookup_table, from_node_id)
            Map.get(lookup_row, to_node_id)
          end

        List.insert_at(acc, -1, matrix_row)
      end)

    node_id_node_name_map =
      Enum.reduce(complete_problem.nodes, %{}, fn node, acc ->
        Map.put(acc, node.id, node.name)
      end)

    precedence_data_list =
      for precedence <- complete_problem.precedences do
        precedence_node_relation_data_list =
          for precedence_node_relation <- precedence.precedence_node_relation_entries do
            %{
              "node_name" => Map.get(node_id_node_name_map, precedence_node_relation.node_id),
              "is_preceeding" => precedence_node_relation.is_preceeding
            }
          end

        %{
          "type" => precedence.type,
          "precedence_node_relation_data_list" => precedence_node_relation_data_list
        }
      end

    problem_json = %{
      "problem_data" => problem_data,
      "node_data_list" => node_data_list,
      "vehicles_data_list" => vehicles_data_list,
      "travel_time_matrix" => travel_time_matrix,
      "precedence_data_list" => precedence_data_list
    }
  end

  # Test with: VrpBenchmarkDataService.Problems.list_preferences_for_problem("Test Problem 1")
  # def list_preferences_for_problem(problem_name) do
  #   query =
  #     from(precedence in Precedence,
  #       join: problem in Problem,
  #       on: precedence.problem_id == problem.id,
  #       join: precedence_node_relation in PrecedenceNodeRelation,
  #       on: precedence.id == precedence_node_relation.precedence_id,
  #       join: nodes in assoc(precedence, :nodes),
  #       preload: [nodes: nodes],
  #       where: problem.name == ^problem_name
  #     )

  #   Repo.all(query)
  # end

  def get_vehicle_for_problem_start_and_end_nodes(problem_name, start_node_name, end_node_name) do
    query =
      from(vehicle in Vehicle,
        join: problem in Problem,
        on: vehicle.problem_id == problem.id,
        join: start_node in Node,
        on: vehicle.start_node_id == start_node.id,
        join: end_node in Node,
        on: vehicle.end_node_id == end_node.id,
        where: problem.name >= ^problem_name,
        where: start_node.name == ^start_node_name,
        where: end_node.name == ^end_node_name
      )

    Repo.one(query)
  end

  def get_node_for_problem_and_node_name(problem_name, node_name) do
    query =
      from(node in Node,
        join: problem in Problem,
        on: node.problem_id == problem.id,
        where: problem.name == ^problem_name,
        where: node.name == ^node_name
      )

    Repo.one(query)
  end

  # --------------------- Custom Functions End ---------------------
end
