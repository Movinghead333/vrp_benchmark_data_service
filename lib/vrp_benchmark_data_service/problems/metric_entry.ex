defmodule VrpBenchmarkDataService.Problems.MetricEntry do
  use Ecto.Schema
  import Ecto.Changeset

  alias VrpBenchmarkDataService.Problems.Problem
  alias VrpBenchmarkDataService.Problems.Node

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "metric_entries" do
    field(:travel_time, :float)
    belongs_to(:problem, Problem)
    belongs_to(:from_node, Node, type: :binary_id)
    belongs_to(:to_node, Node, type: :binary_id)

    timestamps()
  end

  @doc false
  def changeset(metric_entry, attrs) do
    metric_entry
    |> cast(attrs, [:travel_time, :problem_id, :from_node_id, :to_node_id])
    |> validate_required([:travel_time, :problem_id, :from_node_id, :to_node_id])
    |> unique_constraint([:problem_id, :from_node_id, :to_node_id],
      message: "A metric_entry with this problem_id-from_node_id-to_node_id does already exist.",
      error_key: :unique_proble_id_from_node_id_to_node_id
    )
  end
end
