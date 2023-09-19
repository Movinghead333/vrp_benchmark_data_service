defmodule VrpBenchmarkDataService.BenchmarkSuites.BenchmarkSuite do
  alias VrpBenchmarkDataService.BenchmarkSuites.ProblemsInBenchmarkSuitesRelation
  alias VrpBenchmarkDataService.Problems.Problem
  alias VrpBenchmarkDataService.Solutions.Solution
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "benchmark_suites" do
    field(:name, :string)
    field(:runs_per_problem, :integer)

    many_to_many(:problems, Problem,
      join_through: ProblemsInBenchmarkSuitesRelation,
      join_keys: [problem_id: :id, benchmark_suite_id: :id],
      on_replace: :delete
    )

    has_many(:solutions, Solution)

    timestamps()
  end

  @doc false
  def changeset(benchmark_suite, attrs) do
    benchmark_suite
    |> cast(attrs, [:name, :runs_per_problem])
    |> validate_required([:name, :runs_per_problem])
  end
end
