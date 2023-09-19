defmodule VrpBenchmarkDataServiceWeb.BenchmarkSuiteController do
  use VrpBenchmarkDataServiceWeb, :controller

  alias VrpBenchmarkDataService.BenchmarkSuites.BenchmarkSuite
  alias VrpBenchmarkDataService.BenchmarkSuites

  action_fallback(VrpBenchmarkDataServiceWeb.FallbackController)

  def create(conn, benchmark_suite_json) do
    with {:ok, %BenchmarkSuite{} = benchmark_suite} <-
           BenchmarkSuites.create_complete_benchmark_suite(benchmark_suite_json) do
      send_resp(conn, 200, "Benchmark Suite with ID #{benchmark_suite.id} created successfully.")
    end
  end
end
