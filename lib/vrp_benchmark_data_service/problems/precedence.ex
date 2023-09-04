defmodule VrpBenchmarkDataService.Problems.Precedence do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "precendences" do
    field(:type, :string)
    field(:problem_id, :binary_id)

    timestamps()
  end

  @doc false
  def changeset(precedence, attrs) do
    precedence
    |> cast(attrs, [:type, :problem_id])
    |> validate_required([:type, :problem_id])
  end
end