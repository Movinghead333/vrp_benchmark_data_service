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

  @spec changeset(
          {map, map}
          | %{
              :__struct__ => atom | %{:__changeset__ => map, optional(any) => any},
              optional(atom) => any
            },
          :invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}
        ) :: Ecto.Changeset.t()
  @doc false
  def changeset(solver_parameter_spec, attrs) do
    solver_parameter_spec
    |> cast(attrs, [:name, :type, :solver_id])
    |> validate_required([:name, :type, :solver_id])
    |> unique_constraint([:solver_id, :name],
      message: "A solver_parameter_spec with this solver_id-name-combination does already exist.",
      error_key: :unique_solver_id_name
    )
  end
end
