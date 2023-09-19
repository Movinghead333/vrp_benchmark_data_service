defmodule VrpBenchmarkDataService.Repo.Migrations.CreateProblemsInBenchmarkSuitesRelation do
  use Ecto.Migration

  def change do
    create table(:problems_in_benchmark_suites_relation, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :benchmark_suite_id, references(:benchmark_suites, on_delete: :nothing, type: :binary_id)
      add :problem_id, references(:problems, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create index(:problems_in_benchmark_suites_relation, [:benchmark_suite_id])
    create index(:problems_in_benchmark_suites_relation, [:problem_id])
  end
end
