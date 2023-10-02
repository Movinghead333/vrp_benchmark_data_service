defmodule VrpBenchmarkDataService.Solvers.Solver do
  alias VrpBenchmarkDataService.Solvers.SolverParameterSpec
  alias VrpBenchmarkDataService.Solvers.SolverInstance
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "solvers" do
    field(:name, :string)
    field(:version, :string)

    has_many(:solver_instances, SolverInstance)
    has_many(:solver_parameter_specs, SolverParameterSpec)

    timestamps()
  end

  @doc false
  def changeset(solver, attrs) do
    solver
    |> cast(attrs, [:name, :version])
    |> validate_required([:name, :version])
    |> unique_constraint([:name, :version],
      message: "A solver with this name-version-combination does already exist.",
      error_key: :unique_name_version
    )
  end
end
