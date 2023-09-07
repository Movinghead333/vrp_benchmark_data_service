defmodule VrpBenchmarkDataService.Repo.Migrations.CreateSolutions do
  use Ecto.Migration

  def change do
    create table(:solutions, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :is_valid, :boolean, default: false, null: false
      add :computation_time, :float
      add :objective_value, :float
      add :penalized_objective_value, :float
      add :problem_id, references(:problems, on_delete: :nothing, type: :binary_id)
      add :solver_instance_id, references(:solver_instances, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create index(:solutions, [:problem_id])
    create index(:solutions, [:solver_instance_id])
  end
end
