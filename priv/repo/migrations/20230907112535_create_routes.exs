defmodule VrpBenchmarkDataService.Repo.Migrations.CreateRoutes do
  use Ecto.Migration

  def change do
    create table(:routes, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :duration, :integer
      add :number_of_nodes, :integer
      add :solution_id, references(:solutions, on_delete: :nothing, type: :binary_id)
      add :vehicle_id, references(:vehicles, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create index(:routes, [:solution_id])
    create index(:routes, [:vehicle_id])
  end
end
