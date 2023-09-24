defmodule VrpBenchmarkDataService.BenchmarkSuites do
  @moduledoc """
  The BenchmarkSuites context.
  """

  import Ecto.Query, warn: false
  alias VrpBenchmarkDataService.Repo

  alias VrpBenchmarkDataService.BenchmarkSuites.BenchmarkSuite
  alias VrpBenchmarkDataService.Problems
  alias VrpBenchmarkDataService.Problems.Problem
  alias VrpBenchmarkDataService.Solvers
  alias VrpBenchmarkDataService.Solutions.Solution

  @doc """
  Returns the list of benchmark_suites.

  ## Examples

      iex> list_benchmark_suites()
      [%BenchmarkSuite{}, ...]

  """
  def list_benchmark_suites do
    Repo.all(BenchmarkSuite)
  end

  @doc """
  Gets a single benchmark_suite.

  Raises `Ecto.NoResultsError` if the Benchmark suite does not exist.

  ## Examples

      iex> get_benchmark_suite!(123)
      %BenchmarkSuite{}

      iex> get_benchmark_suite!(456)
      ** (Ecto.NoResultsError)

  """
  def get_benchmark_suite!(id), do: Repo.get!(BenchmarkSuite, id)

  @doc """
  Creates a benchmark_suite.

  ## Examples

      iex> create_benchmark_suite(%{field: value})
      {:ok, %BenchmarkSuite{}}

      iex> create_benchmark_suite(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_benchmark_suite(attrs \\ %{}) do
    %BenchmarkSuite{}
    |> BenchmarkSuite.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a benchmark_suite.

  ## Examples

      iex> update_benchmark_suite(benchmark_suite, %{field: new_value})
      {:ok, %BenchmarkSuite{}}

      iex> update_benchmark_suite(benchmark_suite, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_benchmark_suite(%BenchmarkSuite{} = benchmark_suite, attrs) do
    benchmark_suite
    |> BenchmarkSuite.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a benchmark_suite.

  ## Examples

      iex> delete_benchmark_suite(benchmark_suite)
      {:ok, %BenchmarkSuite{}}

      iex> delete_benchmark_suite(benchmark_suite)
      {:error, %Ecto.Changeset{}}

  """
  def delete_benchmark_suite(%BenchmarkSuite{} = benchmark_suite) do
    Repo.delete(benchmark_suite)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking benchmark_suite changes.

  ## Examples

      iex> change_benchmark_suite(benchmark_suite)
      %Ecto.Changeset{data: %BenchmarkSuite{}}

  """
  def change_benchmark_suite(%BenchmarkSuite{} = benchmark_suite, attrs \\ %{}) do
    BenchmarkSuite.changeset(benchmark_suite, attrs)
  end

  alias VrpBenchmarkDataService.BenchmarkSuites.ProblemsInBenchmarkSuitesRelation

  @doc """
  Returns the list of problems_in_benchmark_suites_relation.

  ## Examples

      iex> list_problems_in_benchmark_suites_relation()
      [%ProblemsInBenchmarkSuitesRelation{}, ...]

  """
  def list_problems_in_benchmark_suites_relation do
    Repo.all(ProblemsInBenchmarkSuitesRelation)
  end

  @doc """
  Gets a single problems_in_benchmark_suites_relation.

  Raises `Ecto.NoResultsError` if the Problems in benchmark suites relation does not exist.

  ## Examples

      iex> get_problems_in_benchmark_suites_relation!(123)
      %ProblemsInBenchmarkSuitesRelation{}

      iex> get_problems_in_benchmark_suites_relation!(456)
      ** (Ecto.NoResultsError)

  """
  def get_problems_in_benchmark_suites_relation!(id),
    do: Repo.get!(ProblemsInBenchmarkSuitesRelation, id)

  @doc """
  Creates a problems_in_benchmark_suites_relation.

  ## Examples

      iex> create_problems_in_benchmark_suites_relation(%{field: value})
      {:ok, %ProblemsInBenchmarkSuitesRelation{}}

      iex> create_problems_in_benchmark_suites_relation(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_problems_in_benchmark_suites_relation(attrs \\ %{}) do
    %ProblemsInBenchmarkSuitesRelation{}
    |> ProblemsInBenchmarkSuitesRelation.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a problems_in_benchmark_suites_relation.

  ## Examples

      iex> update_problems_in_benchmark_suites_relation(problems_in_benchmark_suites_relation, %{field: new_value})
      {:ok, %ProblemsInBenchmarkSuitesRelation{}}

      iex> update_problems_in_benchmark_suites_relation(problems_in_benchmark_suites_relation, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_problems_in_benchmark_suites_relation(
        %ProblemsInBenchmarkSuitesRelation{} = problems_in_benchmark_suites_relation,
        attrs
      ) do
    problems_in_benchmark_suites_relation
    |> ProblemsInBenchmarkSuitesRelation.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a problems_in_benchmark_suites_relation.

  ## Examples

      iex> delete_problems_in_benchmark_suites_relation(problems_in_benchmark_suites_relation)
      {:ok, %ProblemsInBenchmarkSuitesRelation{}}

      iex> delete_problems_in_benchmark_suites_relation(problems_in_benchmark_suites_relation)
      {:error, %Ecto.Changeset{}}

  """
  def delete_problems_in_benchmark_suites_relation(
        %ProblemsInBenchmarkSuitesRelation{} = problems_in_benchmark_suites_relation
      ) do
    Repo.delete(problems_in_benchmark_suites_relation)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking problems_in_benchmark_suites_relation changes.

  ## Examples

      iex> change_problems_in_benchmark_suites_relation(problems_in_benchmark_suites_relation)
      %Ecto.Changeset{data: %ProblemsInBenchmarkSuitesRelation{}}

  """
  def change_problems_in_benchmark_suites_relation(
        %ProblemsInBenchmarkSuitesRelation{} = problems_in_benchmark_suites_relation,
        attrs \\ %{}
      ) do
    ProblemsInBenchmarkSuitesRelation.changeset(problems_in_benchmark_suites_relation, attrs)
  end

  # -------------------- Custom Functions Begin --------------------
  def create_complete_benchmark_suite(%{
        "name" => name,
        "runs_per_problem" => runs_per_problem,
        "problem_names_in_benchmark_suite" => problem_names_in_benchmark_suite
      }) do
    benchmark_suite_data = %{
      "name" => name,
      "runs_per_problem" => runs_per_problem
    }

    {:ok, benchmark_suite} = create_benchmark_suite(benchmark_suite_data)

    Enum.each(problem_names_in_benchmark_suite, fn problem_name ->
      problem = Problems.get_problem_for_name(problem_name)

      problems_in_benchmark_suite_data = %{
        "benchmark_suite_id" => benchmark_suite.id,
        "problem_id" => problem.id
      }

      {:ok, _problems_in_benchmark_suite_relation} =
        create_problems_in_benchmark_suites_relation(problems_in_benchmark_suite_data)
    end)

    {:ok, benchmark_suite}
  end

  def get_benchmark_suite_for_name(benchmark_suite_name) do
    query =
      from(benchmark_suite in BenchmarkSuite,
        where: benchmark_suite.name == ^benchmark_suite_name
      )

    Repo.one(query)
  end

  def get_benchmark_suite_with_problems_for_name(benchmark_suite_name) do
    query =
      from(benchmark_suite in BenchmarkSuite,
        join: p_in_bms_r in ProblemsInBenchmarkSuitesRelation,
        on: p_in_bms_r.benchmark_suite_id == benchmark_suite.id,
        join: p in assoc(benchmark_suite, :problems),
        where: benchmark_suite.name == ^benchmark_suite_name,
        preload: [problems: p]
      )

    Repo.one(query)
  end

  def get_open_runs_per_problem_for_benchmark_suite_and_solver_instance(%{
        "benchmark_suite_name" => benchmark_suite_name,
        "solver_instance_spec" => solver_instance_spec
      }) do
    benchmark_suite = get_benchmark_suite_with_problems_for_name(benchmark_suite_name)

    {:ok, solver_instance} =
      Solvers.get_solver_instance_for_solver_and_parameters(solver_instance_spec)

    existing_solutions_query =
      from(solution in Solution,
        join: problem in Problem,
        on: solution.problem_id == problem.id,
        where: solution.benchmark_suite_id == ^benchmark_suite.id,
        where: solution.solver_instance_id == ^solver_instance.id,
        group_by: problem.name,
        select: %{
          problem_name: problem.name,
          solution_count: count(solution.id)
        }
      )

    existing_solutions = Repo.all(existing_solutions_query)

    remaining_runs_per_problem_map =
      Enum.reduce(benchmark_suite.problems, %{}, fn problem, acc ->
        Map.put_new(acc, problem.name, benchmark_suite.runs_per_problem)
      end)

    remaining_runs_per_problem_map =
      Enum.reduce(existing_solutions, remaining_runs_per_problem_map, fn existing_solutions_entry,
                                                                         acc ->
        existing_solutions_count = max(existing_solutions_entry.solution_count, 0)

        Map.put(
          acc,
          existing_solutions_entry.problem_name,
          benchmark_suite.runs_per_problem - existing_solutions_count
        )
      end)

    remaining_runs_per_problem_map
  end

  # --------------------- Custom Functions End ---------------------
end
