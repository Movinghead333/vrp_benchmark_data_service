defmodule VrpBenchmarkDataService.Problems.PrecedenceNodeRelation do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "precedence_node_relation" do
    field(:is_preceeding, :boolean, default: false)
    field(:precedence_id, :binary_id)
    field(:node_id, :binary_id)

    timestamps()
  end

  @doc false
  def changeset(precedence_node_relation, attrs) do
    precedence_node_relation
    |> cast(attrs, [:is_preceeding, :precedence_id, :node_id])
    |> validate_required([:is_preceeding, :precedence_id, :node_id])
  end
end
