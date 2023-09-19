defmodule VrpBenchmarkDataService.BenchmarkSuitesTest do
  use VrpBenchmarkDataService.DataCase

  alias VrpBenchmarkDataService.BenchmarkSuites

  describe "benchmark_suites" do
    alias VrpBenchmarkDataService.BenchmarkSuites.BenchmarkSuite

    import VrpBenchmarkDataService.BenchmarkSuitesFixtures

    @invalid_attrs %{name: nil, runs_per_problem: nil}

    test "list_benchmark_suites/0 returns all benchmark_suites" do
      benchmark_suite = benchmark_suite_fixture()
      assert BenchmarkSuites.list_benchmark_suites() == [benchmark_suite]
    end

    test "get_benchmark_suite!/1 returns the benchmark_suite with given id" do
      benchmark_suite = benchmark_suite_fixture()
      assert BenchmarkSuites.get_benchmark_suite!(benchmark_suite.id) == benchmark_suite
    end

    test "create_benchmark_suite/1 with valid data creates a benchmark_suite" do
      valid_attrs = %{name: "some name", runs_per_problem: 42}

      assert {:ok, %BenchmarkSuite{} = benchmark_suite} = BenchmarkSuites.create_benchmark_suite(valid_attrs)
      assert benchmark_suite.name == "some name"
      assert benchmark_suite.runs_per_problem == 42
    end

    test "create_benchmark_suite/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = BenchmarkSuites.create_benchmark_suite(@invalid_attrs)
    end

    test "update_benchmark_suite/2 with valid data updates the benchmark_suite" do
      benchmark_suite = benchmark_suite_fixture()
      update_attrs = %{name: "some updated name", runs_per_problem: 43}

      assert {:ok, %BenchmarkSuite{} = benchmark_suite} = BenchmarkSuites.update_benchmark_suite(benchmark_suite, update_attrs)
      assert benchmark_suite.name == "some updated name"
      assert benchmark_suite.runs_per_problem == 43
    end

    test "update_benchmark_suite/2 with invalid data returns error changeset" do
      benchmark_suite = benchmark_suite_fixture()
      assert {:error, %Ecto.Changeset{}} = BenchmarkSuites.update_benchmark_suite(benchmark_suite, @invalid_attrs)
      assert benchmark_suite == BenchmarkSuites.get_benchmark_suite!(benchmark_suite.id)
    end

    test "delete_benchmark_suite/1 deletes the benchmark_suite" do
      benchmark_suite = benchmark_suite_fixture()
      assert {:ok, %BenchmarkSuite{}} = BenchmarkSuites.delete_benchmark_suite(benchmark_suite)
      assert_raise Ecto.NoResultsError, fn -> BenchmarkSuites.get_benchmark_suite!(benchmark_suite.id) end
    end

    test "change_benchmark_suite/1 returns a benchmark_suite changeset" do
      benchmark_suite = benchmark_suite_fixture()
      assert %Ecto.Changeset{} = BenchmarkSuites.change_benchmark_suite(benchmark_suite)
    end
  end

  describe "problems_in_benchmark_suites_relation" do
    alias VrpBenchmarkDataService.BenchmarkSuites.ProblemsInBenchmarkSuitesRelation

    import VrpBenchmarkDataService.BenchmarkSuitesFixtures

    @invalid_attrs %{}

    test "list_problems_in_benchmark_suites_relation/0 returns all problems_in_benchmark_suites_relation" do
      problems_in_benchmark_suites_relation = problems_in_benchmark_suites_relation_fixture()
      assert BenchmarkSuites.list_problems_in_benchmark_suites_relation() == [problems_in_benchmark_suites_relation]
    end

    test "get_problems_in_benchmark_suites_relation!/1 returns the problems_in_benchmark_suites_relation with given id" do
      problems_in_benchmark_suites_relation = problems_in_benchmark_suites_relation_fixture()
      assert BenchmarkSuites.get_problems_in_benchmark_suites_relation!(problems_in_benchmark_suites_relation.id) == problems_in_benchmark_suites_relation
    end

    test "create_problems_in_benchmark_suites_relation/1 with valid data creates a problems_in_benchmark_suites_relation" do
      valid_attrs = %{}

      assert {:ok, %ProblemsInBenchmarkSuitesRelation{} = problems_in_benchmark_suites_relation} = BenchmarkSuites.create_problems_in_benchmark_suites_relation(valid_attrs)
    end

    test "create_problems_in_benchmark_suites_relation/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = BenchmarkSuites.create_problems_in_benchmark_suites_relation(@invalid_attrs)
    end

    test "update_problems_in_benchmark_suites_relation/2 with valid data updates the problems_in_benchmark_suites_relation" do
      problems_in_benchmark_suites_relation = problems_in_benchmark_suites_relation_fixture()
      update_attrs = %{}

      assert {:ok, %ProblemsInBenchmarkSuitesRelation{} = problems_in_benchmark_suites_relation} = BenchmarkSuites.update_problems_in_benchmark_suites_relation(problems_in_benchmark_suites_relation, update_attrs)
    end

    test "update_problems_in_benchmark_suites_relation/2 with invalid data returns error changeset" do
      problems_in_benchmark_suites_relation = problems_in_benchmark_suites_relation_fixture()
      assert {:error, %Ecto.Changeset{}} = BenchmarkSuites.update_problems_in_benchmark_suites_relation(problems_in_benchmark_suites_relation, @invalid_attrs)
      assert problems_in_benchmark_suites_relation == BenchmarkSuites.get_problems_in_benchmark_suites_relation!(problems_in_benchmark_suites_relation.id)
    end

    test "delete_problems_in_benchmark_suites_relation/1 deletes the problems_in_benchmark_suites_relation" do
      problems_in_benchmark_suites_relation = problems_in_benchmark_suites_relation_fixture()
      assert {:ok, %ProblemsInBenchmarkSuitesRelation{}} = BenchmarkSuites.delete_problems_in_benchmark_suites_relation(problems_in_benchmark_suites_relation)
      assert_raise Ecto.NoResultsError, fn -> BenchmarkSuites.get_problems_in_benchmark_suites_relation!(problems_in_benchmark_suites_relation.id) end
    end

    test "change_problems_in_benchmark_suites_relation/1 returns a problems_in_benchmark_suites_relation changeset" do
      problems_in_benchmark_suites_relation = problems_in_benchmark_suites_relation_fixture()
      assert %Ecto.Changeset{} = BenchmarkSuites.change_problems_in_benchmark_suites_relation(problems_in_benchmark_suites_relation)
    end
  end
end
