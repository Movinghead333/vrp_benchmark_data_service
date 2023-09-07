defmodule VrpBenchmarkDataService.Solvers.SolverInstance do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "solver_instances" do
    field :solver_id, :binary_id

    timestamps()
  end

  @doc false
  def changeset(solver_instance, attrs) do
    solver_instance
    |> cast(attrs, [:solver_id])
    |> validate_required([:solver_id])
  end
end
