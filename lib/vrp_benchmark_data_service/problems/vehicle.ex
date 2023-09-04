defmodule VrpBenchmarkDataService.Problems.Vehicle do
  use Ecto.Schema
  import Ecto.Changeset

  alias VrpBenchmarkDataService.Problems.Problem
  alias VrpBenchmarkDataService.Problems.Node

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "vehicles" do
    field(:name, :string)
    field(:capacity, :integer)
    belongs_to(:problem, Problem)
    belongs_to(:start_node, Node, type: :binary_id)
    belongs_to(:end_node, Node, type: :binary_id)

    timestamps()
  end

  @doc false
  def changeset(vehicle, attrs) do
    vehicle
    |> cast(attrs, [:name, :capacity, :problem_id, :start_node_id, :end_node_id])
    |> validate_required([:name, :capacity, :problem_id, :start_node_id, :end_node_id])
  end
end
