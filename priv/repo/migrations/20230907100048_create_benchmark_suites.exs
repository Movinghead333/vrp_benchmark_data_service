defmodule VrpBenchmarkDataService.Repo.Migrations.CreateBenchmarkSuites do
  use Ecto.Migration

  def change do
    create table(:benchmark_suites, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :runs_per_problem, :integer

      timestamps()
    end
  end
end
