defmodule VrpBenchmarkDataService.Repo.Migrations.CreateNodes do
  use Ecto.Migration

  def change do
    create table(:nodes, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :volume_change, :integer
      add :service_time, :integer
      add :earliest_arrival_time, :integer
      add :latest_departure_time, :integer
      add :problem_id, references(:problems, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create index(:nodes, [:problem_id])
  end
end
