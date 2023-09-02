defmodule VrpBenchmarkDataService.Repo do
  use Ecto.Repo,
    otp_app: :vrp_benchmark_data_service,
    adapter: Ecto.Adapters.Postgres
end
