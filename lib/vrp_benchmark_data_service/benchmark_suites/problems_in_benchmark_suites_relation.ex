defmodule VrpBenchmarkDataService.BenchmarkSuites.ProblemsInBenchmarkSuitesRelation do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "problems_in_benchmark_suites_relation" do

    field :benchmark_suite_id, :binary_id
    field :problem_id, :binary_id

    timestamps()
  end

  @doc false
  def changeset(problems_in_benchmark_suites_relation, attrs) do
    problems_in_benchmark_suites_relation
    |> cast(attrs, [])
    |> validate_required([])
  end
end
