defmodule VrpBenchmarkDataService.Repo.Migrations.CreatePrecedenceNodeRelation do
  use Ecto.Migration

  def change do
    create table(:precedence_node_relation, primary_key: false) do
      add(:id, :binary_id, primary_key: true)
      add(:is_preceeding, :boolean, default: false, null: false)
      add(:precedence_id, references(:precendences, on_delete: :delete_all, type: :binary_id))
      add(:node_id, references(:nodes, on_delete: :delete_all, type: :binary_id))

      timestamps()
    end

    create(index(:precedence_node_relation, [:precedence_id]))
    create(index(:precedence_node_relation, [:node_id]))
  end
end
