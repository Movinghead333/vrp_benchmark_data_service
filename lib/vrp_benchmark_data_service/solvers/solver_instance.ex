defmodule VrpBenchmarkDataService.Solvers.SolverInstance do
  alias VrpBenchmarkDataService.Solvers.SolverParameterInstance
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "solver_instances" do
    belongs_to(:solver, Solver)

    has_many(:solver_parameter_instances, SolverParameterInstance)

    timestamps()
  end

  @doc false
  def changeset(solver_instance, attrs) do
    solver_instance
    |> cast(attrs, [:solver_id])
    |> validate_required([:solver_id])
  end
end
