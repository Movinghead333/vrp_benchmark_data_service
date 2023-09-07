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

  describe "solver_parameter_specs" do
    alias VrpBenchmarkDataService.Solvers.SolverParameterSpec

    import VrpBenchmarkDataService.SolversFixtures

    @invalid_attrs %{name: nil, type: nil}

    test "list_solver_parameter_specs/0 returns all solver_parameter_specs" do
      solver_parameter_spec = solver_parameter_spec_fixture()
      assert Solvers.list_solver_parameter_specs() == [solver_parameter_spec]
    end

    test "get_solver_parameter_spec!/1 returns the solver_parameter_spec with given id" do
      solver_parameter_spec = solver_parameter_spec_fixture()
      assert Solvers.get_solver_parameter_spec!(solver_parameter_spec.id) == solver_parameter_spec
    end

    test "create_solver_parameter_spec/1 with valid data creates a solver_parameter_spec" do
      valid_attrs = %{name: "some name", type: "some type"}

      assert {:ok, %SolverParameterSpec{} = solver_parameter_spec} = Solvers.create_solver_parameter_spec(valid_attrs)
      assert solver_parameter_spec.name == "some name"
      assert solver_parameter_spec.type == "some type"
    end

    test "create_solver_parameter_spec/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Solvers.create_solver_parameter_spec(@invalid_attrs)
    end

    test "update_solver_parameter_spec/2 with valid data updates the solver_parameter_spec" do
      solver_parameter_spec = solver_parameter_spec_fixture()
      update_attrs = %{name: "some updated name", type: "some updated type"}

      assert {:ok, %SolverParameterSpec{} = solver_parameter_spec} = Solvers.update_solver_parameter_spec(solver_parameter_spec, update_attrs)
      assert solver_parameter_spec.name == "some updated name"
      assert solver_parameter_spec.type == "some updated type"
    end

    test "update_solver_parameter_spec/2 with invalid data returns error changeset" do
      solver_parameter_spec = solver_parameter_spec_fixture()
      assert {:error, %Ecto.Changeset{}} = Solvers.update_solver_parameter_spec(solver_parameter_spec, @invalid_attrs)
      assert solver_parameter_spec == Solvers.get_solver_parameter_spec!(solver_parameter_spec.id)
    end

    test "delete_solver_parameter_spec/1 deletes the solver_parameter_spec" do
      solver_parameter_spec = solver_parameter_spec_fixture()
      assert {:ok, %SolverParameterSpec{}} = Solvers.delete_solver_parameter_spec(solver_parameter_spec)
      assert_raise Ecto.NoResultsError, fn -> Solvers.get_solver_parameter_spec!(solver_parameter_spec.id) end
    end

    test "change_solver_parameter_spec/1 returns a solver_parameter_spec changeset" do
      solver_parameter_spec = solver_parameter_spec_fixture()
      assert %Ecto.Changeset{} = Solvers.change_solver_parameter_spec(solver_parameter_spec)
    end
  end
end
