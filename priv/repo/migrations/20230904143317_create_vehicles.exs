defmodule VrpBenchmarkDataService.Repo.Migrations.CreateVehicles do
  use Ecto.Migration

  def change do
    create table(:vehicles, primary_key: false) do
      add(:id, :binary_id, primary_key: true)
      add(:name, :string)
      add(:capacity, :integer)
      add(:problem_id, references(:problems, on_delete: :nothing, type: :binary_id))
      add(:start_node, references(:nodes, on_delete: :nothing, type: :binary_id))
      add(:end_node, references(:nodes, on_delete: :nothing, type: :binary_id))

      timestamps()
    end

    create(index(:vehicles, [:problem_id]))
    create(index(:vehicles, [:start_node]))
    create(index(:vehicles, [:end_node]))
  end
end
