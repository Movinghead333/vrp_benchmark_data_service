defmodule VrpBenchmarkDataService.SolutionsTest do
  use VrpBenchmarkDataService.DataCase

  alias VrpBenchmarkDataService.Solutions

  describe "solutions" do
    alias VrpBenchmarkDataService.Solutions.Solution

    import VrpBenchmarkDataService.SolutionsFixtures

    @invalid_attrs %{computation_time: nil, is_valid: nil, objective_value: nil, penalized_objective_value: nil}

    test "list_solutions/0 returns all solutions" do
      solution = solution_fixture()
      assert Solutions.list_solutions() == [solution]
    end

    test "get_solution!/1 returns the solution with given id" do
      solution = solution_fixture()
      assert Solutions.get_solution!(solution.id) == solution
    end

    test "create_solution/1 with valid data creates a solution" do
      valid_attrs = %{computation_time: 120.5, is_valid: true, objective_value: 120.5, penalized_objective_value: 120.5}

      assert {:ok, %Solution{} = solution} = Solutions.create_solution(valid_attrs)
      assert solution.computation_time == 120.5
      assert solution.is_valid == true
      assert solution.objective_value == 120.5
      assert solution.penalized_objective_value == 120.5
    end

    test "create_solution/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Solutions.create_solution(@invalid_attrs)
    end

    test "update_solution/2 with valid data updates the solution" do
      solution = solution_fixture()
      update_attrs = %{computation_time: 456.7, is_valid: false, objective_value: 456.7, penalized_objective_value: 456.7}

      assert {:ok, %Solution{} = solution} = Solutions.update_solution(solution, update_attrs)
      assert solution.computation_time == 456.7
      assert solution.is_valid == false
      assert solution.objective_value == 456.7
      assert solution.penalized_objective_value == 456.7
    end

    test "update_solution/2 with invalid data returns error changeset" do
      solution = solution_fixture()
      assert {:error, %Ecto.Changeset{}} = Solutions.update_solution(solution, @invalid_attrs)
      assert solution == Solutions.get_solution!(solution.id)
    end

    test "delete_solution/1 deletes the solution" do
      solution = solution_fixture()
      assert {:ok, %Solution{}} = Solutions.delete_solution(solution)
      assert_raise Ecto.NoResultsError, fn -> Solutions.get_solution!(solution.id) end
    end

    test "change_solution/1 returns a solution changeset" do
      solution = solution_fixture()
      assert %Ecto.Changeset{} = Solutions.change_solution(solution)
    end
  end

  describe "routes" do
    alias VrpBenchmarkDataService.Solutions.Route

    import VrpBenchmarkDataService.SolutionsFixtures

    @invalid_attrs %{duration: nil, number_of_nodes: nil}

    test "list_routes/0 returns all routes" do
      route = route_fixture()
      assert Solutions.list_routes() == [route]
    end

    test "get_route!/1 returns the route with given id" do
      route = route_fixture()
      assert Solutions.get_route!(route.id) == route
    end

    test "create_route/1 with valid data creates a route" do
      valid_attrs = %{duration: 42, number_of_nodes: 42}

      assert {:ok, %Route{} = route} = Solutions.create_route(valid_attrs)
      assert route.duration == 42
      assert route.number_of_nodes == 42
    end

    test "create_route/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Solutions.create_route(@invalid_attrs)
    end

    test "update_route/2 with valid data updates the route" do
      route = route_fixture()
      update_attrs = %{duration: 43, number_of_nodes: 43}

      assert {:ok, %Route{} = route} = Solutions.update_route(route, update_attrs)
      assert route.duration == 43
      assert route.number_of_nodes == 43
    end

    test "update_route/2 with invalid data returns error changeset" do
      route = route_fixture()
      assert {:error, %Ecto.Changeset{}} = Solutions.update_route(route, @invalid_attrs)
      assert route == Solutions.get_route!(route.id)
    end

    test "delete_route/1 deletes the route" do
      route = route_fixture()
      assert {:ok, %Route{}} = Solutions.delete_route(route)
      assert_raise Ecto.NoResultsError, fn -> Solutions.get_route!(route.id) end
    end

    test "change_route/1 returns a route changeset" do
      route = route_fixture()
      assert %Ecto.Changeset{} = Solutions.change_route(route)
    end
  end

  describe "route_node_relation" do
    alias VrpBenchmarkDataService.Solutions.RouteNodeRelation

    import VrpBenchmarkDataService.SolutionsFixtures

    @invalid_attrs %{index_in_route: nil}

    test "list_route_node_relation/0 returns all route_node_relation" do
      route_node_relation = route_node_relation_fixture()
      assert Solutions.list_route_node_relation() == [route_node_relation]
    end

    test "get_route_node_relation!/1 returns the route_node_relation with given id" do
      route_node_relation = route_node_relation_fixture()
      assert Solutions.get_route_node_relation!(route_node_relation.id) == route_node_relation
    end

    test "create_route_node_relation/1 with valid data creates a route_node_relation" do
      valid_attrs = %{index_in_route: 42}

      assert {:ok, %RouteNodeRelation{} = route_node_relation} = Solutions.create_route_node_relation(valid_attrs)
      assert route_node_relation.index_in_route == 42
    end

    test "create_route_node_relation/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Solutions.create_route_node_relation(@invalid_attrs)
    end

    test "update_route_node_relation/2 with valid data updates the route_node_relation" do
      route_node_relation = route_node_relation_fixture()
      update_attrs = %{index_in_route: 43}

      assert {:ok, %RouteNodeRelation{} = route_node_relation} = Solutions.update_route_node_relation(route_node_relation, update_attrs)
      assert route_node_relation.index_in_route == 43
    end

    test "update_route_node_relation/2 with invalid data returns error changeset" do
      route_node_relation = route_node_relation_fixture()
      assert {:error, %Ecto.Changeset{}} = Solutions.update_route_node_relation(route_node_relation, @invalid_attrs)
      assert route_node_relation == Solutions.get_route_node_relation!(route_node_relation.id)
    end

    test "delete_route_node_relation/1 deletes the route_node_relation" do
      route_node_relation = route_node_relation_fixture()
      assert {:ok, %RouteNodeRelation{}} = Solutions.delete_route_node_relation(route_node_relation)
      assert_raise Ecto.NoResultsError, fn -> Solutions.get_route_node_relation!(route_node_relation.id) end
    end

    test "change_route_node_relation/1 returns a route_node_relation changeset" do
      route_node_relation = route_node_relation_fixture()
      assert %Ecto.Changeset{} = Solutions.change_route_node_relation(route_node_relation)
    end
  end
end
