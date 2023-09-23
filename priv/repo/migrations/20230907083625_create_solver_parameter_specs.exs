defmodule VrpBenchmarkDataService.Repo.Migrations.CreateSolverParameterSpecs do
  use Ecto.Migration

  def change do
    create table(:solver_parameter_specs, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :type, :string
      add :solver_id, references(:solvers, on_delete: :delete_all, type: :binary_id)

      timestamps()
    end

    create index(:solver_parameter_specs, [:solver_id])
  end
end
