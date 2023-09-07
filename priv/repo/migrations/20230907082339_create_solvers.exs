defmodule VrpBenchmarkDataService.Repo.Migrations.CreateSolvers do
  use Ecto.Migration

  def change do
    create table(:solvers, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :version, :string

      timestamps()
    end
  end
end
