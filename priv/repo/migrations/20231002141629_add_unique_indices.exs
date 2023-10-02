defmodule VrpBenchmarkDataService.Repo.Migrations.AddUniqueIndices do
  use Ecto.Migration

  def change do
    create(unique_index(:problems, [:name]))
    create(unique_index(:nodes, [:problem_id, :name]))
    create(unique_index(:metric_entries, [:problem_id, :from_node_id, :to_node_id]))
    create(unique_index(:solvers, [:name, :version]))
    create(unique_index(:solver_parameter_specs, [:solver_id, :name]))

    create(
      unique_index(:solver_parameter_instances, [
        :solver_instance_id,
        :solver_parameter_spec_id
      ])
    )

    create(unique_index(:benchmark_suites, [:name]))

    create(
      unique_index(:problems_in_benchmark_suites_relation, [:benchmark_suite_id, :problem_id])
    )
  end
end
