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
end
