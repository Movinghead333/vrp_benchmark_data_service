defmodule VrpBenchmarkDataService.Repo.Migrations.CreateRouteNodeRelation do
  use Ecto.Migration

  def change do
    create table(:route_node_relation, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :index_in_route, :integer
      add :route_id, references(:routes, on_delete: :nothing, type: :binary_id)
      add :node_id, references(:nodes, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create index(:route_node_relation, [:route_id])
    create index(:route_node_relation, [:node_id])
  end
end
