defmodule VrpBenchmarkDataService.Problems.Problem do
  use Ecto.Schema
  import Ecto.Changeset

  alias VrpBenchmarkDataService.Problems.Node
  alias VrpBenchmarkDataService.Problems.Vehicle

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "problems" do
    field(:name, :string)

    has_many(:nodes, Node)
    has_many(:vehicles, Vehicle)

    timestamps()
  end

  @doc false
  def changeset(problem, attrs) do
    problem
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
