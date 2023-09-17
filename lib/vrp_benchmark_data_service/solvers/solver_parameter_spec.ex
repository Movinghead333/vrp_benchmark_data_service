defmodule VrpBenchmarkDataService.Solvers.SolverParameterSpec do
  alias VrpBenchmarkDataService.Solvers.SolverParameterInstance
  alias VrpBenchmarkDataService.Solvers.Solver
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "solver_parameter_specs" do
    field(:name, :string)
    field(:type, :string)
    belongs_to(:solver, Solver)

    has_many(:solver_parameter_instances, SolverParameterInstance)

    timestamps()
  end

  @doc false
  def changeset(solver_parameter_spec, attrs) do
    solver_parameter_spec
    |> cast(attrs, [:name, :type, :solver_id])
    |> validate_required([:name, :type, :solver_id])
  end
end
