defmodule VrpBenchmarkDataService.Repo.Migrations.CreateSolverInstances do
  use Ecto.Migration

  def change do
    create table(:solver_instances, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :solver_id, references(:solvers, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create index(:solver_instances, [:solver_id])
  end
end
