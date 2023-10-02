defmodule VrpBenchmarkDataService.Solvers.SolverParameterInstance do
  alias VrpBenchmarkDataService.Solvers.SolverParameterSpec
  alias VrpBenchmarkDataService.Solvers.SolverInstance
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "solver_parameter_instances" do
    field(:value, :string)
    belongs_to(:solver_instance, SolverInstance)
    belongs_to(:solver_parameter_spec, SolverParameterSpec)

    timestamps()
  end

  @doc false
  def changeset(solver_parameter_instance, attrs) do
    solver_parameter_instance
    |> cast(attrs, [:value, :solver_instance_id, :solver_parameter_spec_id])
    |> validate_required([:value, :solver_instance_id, :solver_parameter_spec_id])
    |> unique_constraint([:solver_instance_id, :solver_parameter_spec_id],
      message:
        "A solver_parameter_instance with this solver_instance_id-solver_parameter_spec_id-combination does already exist.",
      error_key: :unique_solver_instance_id_solver_parameter_spec_id
    )
  end
end
