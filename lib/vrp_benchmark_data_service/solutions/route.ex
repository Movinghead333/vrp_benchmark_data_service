defmodule VrpBenchmarkDataService.Solutions.Route do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "routes" do
    field(:duration, :integer)
    field(:number_of_nodes, :integer)
    field(:solution_id, :binary_id)
    field(:vehicle_id, :binary_id)

    timestamps()
  end

  @doc false
  def changeset(route, attrs) do
    route
    |> cast(attrs, [:duration, :number_of_nodes, :solution_id, :vehicle_id])
    |> validate_required([:duration, :number_of_nodes, :solution_id, :vehicle_id])
  end
end
