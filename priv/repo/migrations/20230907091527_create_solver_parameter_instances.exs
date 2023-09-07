defmodule VrpBenchmarkDataService.Repo.Migrations.CreateSolverParameterInstances do
  use Ecto.Migration

  def change do
    create table(:solver_parameter_instances, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :value, :string
      add :solver_instance_id, references(:solver_instances, on_delete: :nothing, type: :binary_id)
      add :solver_parameter_spec_id, references(:solver_parameter_specs, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create index(:solver_parameter_instances, [:solver_instance_id])
    create index(:solver_parameter_instances, [:solver_parameter_spec_id])
  end
end
