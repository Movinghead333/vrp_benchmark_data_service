defmodule VrpBenchmarkDataService.SolversTest do
  use VrpBenchmarkDataService.DataCase

  alias VrpBenchmarkDataService.Solvers

  describe "solvers" do
    alias VrpBenchmarkDataService.Solvers.Solver

    import VrpBenchmarkDataService.SolversFixtures

    @invalid_attrs %{name: nil, version: nil}

    test "list_solvers/0 returns all solvers" do
      solver = solver_fixture()
      assert Solvers.list_solvers() == [solver]
    end

    test "get_solver!/1 returns the solver with given id" do
      solver = solver_fixture()
      assert Solvers.get_solver!(solver.id) == solver
    end

    test "create_solver/1 with valid data creates a solver" do
      valid_attrs = %{name: "some name", version: "some version"}

      assert {:ok, %Solver{} = solver} = Solvers.create_solver(valid_attrs)
      assert solver.name == "some name"
      assert solver.version == "some version"
    end

    test "create_solver/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Solvers.create_solver(@invalid_attrs)
    end

    test "update_solver/2 with valid data updates the solver" do
      solver = solver_fixture()
      update_attrs = %{name: "some updated name", version: "some updated version"}

      assert {:ok, %Solver{} = solver} = Solvers.update_solver(solver, update_attrs)
      assert solver.name == "some updated name"
      assert solver.version == "some updated version"
    end

    test "update_solver/2 with invalid data returns error changeset" do
      solver = solver_fixture()
      assert {:error, %Ecto.Changeset{}} = Solvers.update_solver(solver, @invalid_attrs)
      assert solver == Solvers.get_solver!(solver.id)
    end

    test "delete_solver/1 deletes the solver" do
      solver = solver_fixture()
      assert {:ok, %Solver{}} = Solvers.delete_solver(solver)
      assert_raise Ecto.NoResultsError, fn -> Solvers.get_solver!(solver.id) end
    end

    test "change_solver/1 returns a solver changeset" do
      solver = solver_fixture()
      assert %Ecto.Changeset{} = Solvers.change_solver(solver)
    end
  end
end
