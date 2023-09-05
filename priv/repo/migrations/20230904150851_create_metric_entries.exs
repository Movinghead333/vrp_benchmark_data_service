defmodule VrpBenchmarkDataService.Repo.Migrations.CreateMetricEntries do
  use Ecto.Migration

  def change do
    create table(:metric_entries, primary_key: false) do
      add(:id, :binary_id, primary_key: true)
      add(:travel_time, :float)
      add(:problem_id, references(:problems, on_delete: :delete_all, type: :binary_id))
      add(:from_node_id, references(:nodes, on_delete: :nothing, type: :binary_id))
      add(:to_node_id, references(:nodes, on_delete: :nothing, type: :binary_id))

      timestamps()
    end

    create(index(:metric_entries, [:problem_id]))
    create(index(:metric_entries, [:from_node_id]))
    create(index(:metric_entries, [:to_node_id]))
  end
end
