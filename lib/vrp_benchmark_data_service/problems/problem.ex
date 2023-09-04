defmodule VrpBenchmarkDataService.Problems.Problem do
  use Ecto.Schema
  import Ecto.Changeset

  alias VrpBenchmarkDataService.Problems.Node

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "problems" do
    field(:name, :string)

    has_many(:nodes, Node)

    timestamps()
  end

  @doc false
  def changeset(problem, attrs) do
    problem
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
