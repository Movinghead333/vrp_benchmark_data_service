defmodule VrpBenchmarkDataService.Problems.Problem do
  use Ecto.Schema
  import Ecto.Changeset

  alias VrpBenchmarkDataService.Problems.MetricEntry
  alias VrpBenchmarkDataService.Problems.Node
  alias VrpBenchmarkDataService.Problems.Vehicle
  alias VrpBenchmarkDataService.Problems.Precedence

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "problems" do
    field(:name, :string)

    has_many(:nodes, Node)
    has_many(:vehicles, Vehicle)
    has_many(:metric_entries, MetricEntry)
    has_many(:precedences, Precedence)

    timestamps()
  end

  @doc false
  def changeset(problem, attrs) do
    problem
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name,
      message: "A problem with this name does already exist.",
      error_key: :unique_name
    )
  end
end
