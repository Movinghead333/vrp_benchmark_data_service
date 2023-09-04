defmodule VrpBenchmarkDataService.Problems.Node do
  use Ecto.Schema
  import Ecto.Changeset

  alias VrpBenchmarkDataService.Problems.Problem

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "nodes" do
    field(:earliest_arrival_time, :integer)
    field(:latest_departure_time, :integer)
    field(:name, :string)
    field(:service_time, :integer)
    field(:volume_change, :integer)
    belongs_to(:problem, Problem)

    timestamps()
  end

  @doc false
  def changeset(node, attrs) do
    node
    |> cast(attrs, [
      :name,
      :volume_change,
      :service_time,
      :earliest_arrival_time,
      :latest_departure_time,
      :problem_id
    ])
    |> validate_required([
      :name,
      :volume_change,
      :service_time,
      :earliest_arrival_time,
      :latest_departure_time,
      :problem_id
    ])
  end
end
