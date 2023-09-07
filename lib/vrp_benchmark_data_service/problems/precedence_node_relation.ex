defmodule VrpBenchmarkDataService.Problems.PrecedenceNodeRelation do
  alias VrpBenchmarkDataService.Problems.Precedence
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "precedence_node_relation" do
    field(:is_preceeding, :boolean, default: false)
    belongs_to(:precedence, Precedence)
    belongs_to(:node, Node)

    timestamps()
  end

  @doc false
  def changeset(precedence_node_relation, attrs) do
    precedence_node_relation
    |> cast(attrs, [:is_preceeding, :precedence_id, :node_id])
    |> validate_required([:is_preceeding, :precedence_id, :node_id])
  end
end
