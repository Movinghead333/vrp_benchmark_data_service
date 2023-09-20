defmodule VrpBenchmarkDataServiceWeb.RemainingRunsController do
  alias VrpBenchmarkDataService.BenchmarkSuites
  use VrpBenchmarkDataServiceWeb, :controller

  action_fallback(VrpBenchmarkDataServiceWeb.FallbackController)

  def create(conn, params) do
    remaining_runs_data =
      BenchmarkSuites.get_open_runs_per_problem_for_benchmark_suite_and_solver_instance(params)

    render(conn, :create, %{"remaining_runs_data" => remaining_runs_data})
  end
end
