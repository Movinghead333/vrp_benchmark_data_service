defmodule VrpBenchmarkDataService.BenchmarkSuites.ProblemsInBenchmarkSuitesRelation do
  alias VrpBenchmarkDataService.Problems.Problem
  alias VrpBenchmarkDataService.BenchmarkSuites.BenchmarkSuite
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "problems_in_benchmark_suites_relation" do
    belongs_to(:benchmark_suite, BenchmarkSuite)
    belongs_to(:problem, Problem)

    timestamps()
  end

  @doc false
  def changeset(problems_in_benchmark_suites_relation, attrs) do
    problems_in_benchmark_suites_relation
    |> cast(attrs, [:benchmark_suite_id, :problem_id])
    |> validate_required([:benchmark_suite_id, :problem_id])
    |> unique_constraint([:benchmark_suite_id, :problem_id],
      message:
        "A problems_in_benchmark_suites_relation with this benchmark_suite_id-problem_id-combination does already exist.",
      error_key: :unique_benchmark_suite_id_problem_id
    )
  end
end
