defmodule VrpBenchmarkDataService.Solutions.Solution do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "solutions" do
    field(:computation_time, :float)
    field(:is_valid, :boolean, default: false)
    field(:objective_value, :float)
    field(:penalized_objective_value, :float)
    field(:problem_id, :binary_id)
    field(:solver_instance_id, :binary_id)

    timestamps()
  end

  @doc false
  def changeset(solution, attrs) do
    solution
    |> cast(attrs, [
      :is_valid,
      :computation_time,
      :objective_value,
      :penalized_objective_value,
      :problem_id,
      :solver_instance_id
    ])
    |> validate_required([
      :is_valid,
      :computation_time,
      :objective_value,
      :penalized_objective_value,
      :problem_id,
      :solver_instance_id
    ])
  end
end
