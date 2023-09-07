defmodule VrpBenchmarkDataService.Solvers.Solver do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "solvers" do
    field :name, :string
    field :version, :string

    timestamps()
  end

  @doc false
  def changeset(solver, attrs) do
    solver
    |> cast(attrs, [:name, :version])
    |> validate_required([:name, :version])
  end
end
