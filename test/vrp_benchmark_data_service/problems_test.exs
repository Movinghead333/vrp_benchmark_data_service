defmodule VrpBenchmarkDataService.ProblemsTest do
  use VrpBenchmarkDataService.DataCase

  alias VrpBenchmarkDataService.Problems

  describe "problems" do
    alias VrpBenchmarkDataService.Problems.Problem

    import VrpBenchmarkDataService.ProblemsFixtures

    @invalid_attrs %{name: nil}

    test "list_problems/0 returns all problems" do
      problem = problem_fixture()
      assert Problems.list_problems() == [problem]
    end

    test "get_problem!/1 returns the problem with given id" do
      problem = problem_fixture()
      assert Problems.get_problem!(problem.id) == problem
    end

    test "create_problem/1 with valid data creates a problem" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Problem{} = problem} = Problems.create_problem(valid_attrs)
      assert problem.name == "some name"
    end

    test "create_problem/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Problems.create_problem(@invalid_attrs)
    end

    test "update_problem/2 with valid data updates the problem" do
      problem = problem_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Problem{} = problem} = Problems.update_problem(problem, update_attrs)
      assert problem.name == "some updated name"
    end

    test "update_problem/2 with invalid data returns error changeset" do
      problem = problem_fixture()
      assert {:error, %Ecto.Changeset{}} = Problems.update_problem(problem, @invalid_attrs)
      assert problem == Problems.get_problem!(problem.id)
    end

    test "delete_problem/1 deletes the problem" do
      problem = problem_fixture()
      assert {:ok, %Problem{}} = Problems.delete_problem(problem)
      assert_raise Ecto.NoResultsError, fn -> Problems.get_problem!(problem.id) end
    end

    test "change_problem/1 returns a problem changeset" do
      problem = problem_fixture()
      assert %Ecto.Changeset{} = Problems.change_problem(problem)
    end
  end

  describe "nodes" do
    alias VrpBenchmarkDataService.Problems.Node

    import VrpBenchmarkDataService.ProblemsFixtures

    @invalid_attrs %{earliest_arrival_time: nil, latest_departure_time: nil, name: nil, service_time: nil, volume_change: nil}

    test "list_nodes/0 returns all nodes" do
      node = node_fixture()
      assert Problems.list_nodes() == [node]
    end

    test "get_node!/1 returns the node with given id" do
      node = node_fixture()
      assert Problems.get_node!(node.id) == node
    end

    test "create_node/1 with valid data creates a node" do
      valid_attrs = %{earliest_arrival_time: 42, latest_departure_time: 42, name: "some name", service_time: 42, volume_change: 42}

      assert {:ok, %Node{} = node} = Problems.create_node(valid_attrs)
      assert node.earliest_arrival_time == 42
      assert node.latest_departure_time == 42
      assert node.name == "some name"
      assert node.service_time == 42
      assert node.volume_change == 42
    end

    test "create_node/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Problems.create_node(@invalid_attrs)
    end

    test "update_node/2 with valid data updates the node" do
      node = node_fixture()
      update_attrs = %{earliest_arrival_time: 43, latest_departure_time: 43, name: "some updated name", service_time: 43, volume_change: 43}

      assert {:ok, %Node{} = node} = Problems.update_node(node, update_attrs)
      assert node.earliest_arrival_time == 43
      assert node.latest_departure_time == 43
      assert node.name == "some updated name"
      assert node.service_time == 43
      assert node.volume_change == 43
    end

    test "update_node/2 with invalid data returns error changeset" do
      node = node_fixture()
      assert {:error, %Ecto.Changeset{}} = Problems.update_node(node, @invalid_attrs)
      assert node == Problems.get_node!(node.id)
    end

    test "delete_node/1 deletes the node" do
      node = node_fixture()
      assert {:ok, %Node{}} = Problems.delete_node(node)
      assert_raise Ecto.NoResultsError, fn -> Problems.get_node!(node.id) end
    end

    test "change_node/1 returns a node changeset" do
      node = node_fixture()
      assert %Ecto.Changeset{} = Problems.change_node(node)
    end
  end

  describe "vehicles" do
    alias VrpBenchmarkDataService.Problems.Vehicle

    import VrpBenchmarkDataService.ProblemsFixtures

    @invalid_attrs %{capacity: nil}

    test "list_vehicles/0 returns all vehicles" do
      vehicle = vehicle_fixture()
      assert Problems.list_vehicles() == [vehicle]
    end

    test "get_vehicle!/1 returns the vehicle with given id" do
      vehicle = vehicle_fixture()
      assert Problems.get_vehicle!(vehicle.id) == vehicle
    end

    test "create_vehicle/1 with valid data creates a vehicle" do
      valid_attrs = %{capacity: 42}

      assert {:ok, %Vehicle{} = vehicle} = Problems.create_vehicle(valid_attrs)
      assert vehicle.capacity == 42
    end

    test "create_vehicle/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Problems.create_vehicle(@invalid_attrs)
    end

    test "update_vehicle/2 with valid data updates the vehicle" do
      vehicle = vehicle_fixture()
      update_attrs = %{capacity: 43}

      assert {:ok, %Vehicle{} = vehicle} = Problems.update_vehicle(vehicle, update_attrs)
      assert vehicle.capacity == 43
    end

    test "update_vehicle/2 with invalid data returns error changeset" do
      vehicle = vehicle_fixture()
      assert {:error, %Ecto.Changeset{}} = Problems.update_vehicle(vehicle, @invalid_attrs)
      assert vehicle == Problems.get_vehicle!(vehicle.id)
    end

    test "delete_vehicle/1 deletes the vehicle" do
      vehicle = vehicle_fixture()
      assert {:ok, %Vehicle{}} = Problems.delete_vehicle(vehicle)
      assert_raise Ecto.NoResultsError, fn -> Problems.get_vehicle!(vehicle.id) end
    end

    test "change_vehicle/1 returns a vehicle changeset" do
      vehicle = vehicle_fixture()
      assert %Ecto.Changeset{} = Problems.change_vehicle(vehicle)
    end
  end

  describe "metric_entries" do
    alias VrpBenchmarkDataService.Problems.MetricEntry

    import VrpBenchmarkDataService.ProblemsFixtures

    @invalid_attrs %{travel_time: nil}

    test "list_metric_entries/0 returns all metric_entries" do
      metric_entry = metric_entry_fixture()
      assert Problems.list_metric_entries() == [metric_entry]
    end

    test "get_metric_entry!/1 returns the metric_entry with given id" do
      metric_entry = metric_entry_fixture()
      assert Problems.get_metric_entry!(metric_entry.id) == metric_entry
    end

    test "create_metric_entry/1 with valid data creates a metric_entry" do
      valid_attrs = %{travel_time: 42}

      assert {:ok, %MetricEntry{} = metric_entry} = Problems.create_metric_entry(valid_attrs)
      assert metric_entry.travel_time == 42
    end

    test "create_metric_entry/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Problems.create_metric_entry(@invalid_attrs)
    end

    test "update_metric_entry/2 with valid data updates the metric_entry" do
      metric_entry = metric_entry_fixture()
      update_attrs = %{travel_time: 43}

      assert {:ok, %MetricEntry{} = metric_entry} = Problems.update_metric_entry(metric_entry, update_attrs)
      assert metric_entry.travel_time == 43
    end

    test "update_metric_entry/2 with invalid data returns error changeset" do
      metric_entry = metric_entry_fixture()
      assert {:error, %Ecto.Changeset{}} = Problems.update_metric_entry(metric_entry, @invalid_attrs)
      assert metric_entry == Problems.get_metric_entry!(metric_entry.id)
    end

    test "delete_metric_entry/1 deletes the metric_entry" do
      metric_entry = metric_entry_fixture()
      assert {:ok, %MetricEntry{}} = Problems.delete_metric_entry(metric_entry)
      assert_raise Ecto.NoResultsError, fn -> Problems.get_metric_entry!(metric_entry.id) end
    end

    test "change_metric_entry/1 returns a metric_entry changeset" do
      metric_entry = metric_entry_fixture()
      assert %Ecto.Changeset{} = Problems.change_metric_entry(metric_entry)
    end
  end
end
