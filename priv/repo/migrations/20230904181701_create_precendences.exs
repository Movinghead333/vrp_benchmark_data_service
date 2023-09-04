defmodule VrpBenchmarkDataService.Repo.Migrations.CreatePrecendences do
  use Ecto.Migration

  def change do
    create table(:precendences, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :type, :string
      add :problem_id, references(:problems, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create index(:precendences, [:problem_id])
  end
end
