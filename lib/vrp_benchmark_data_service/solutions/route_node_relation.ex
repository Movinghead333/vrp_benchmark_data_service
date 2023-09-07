defmodule VrpBenchmarkDataService.Solutions.RouteNodeRelation do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "route_node_relation" do
    field(:index_in_route, :integer)
    field(:route_id, :binary_id)
    field(:node_id, :binary_id)

    timestamps()
  end

  @doc false
  def changeset(route_node_relation, attrs) do
    route_node_relation
    |> cast(attrs, [:index_in_route, :route_id, :node_id])
    |> validate_required([:index_in_route, :route_id, :node_id])
  end
end
