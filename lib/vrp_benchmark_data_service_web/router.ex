defmodule VrpBenchmarkDataServiceWeb.Router do
  alias VrpBenchmarkDataServiceWeb.BenchmarkSuiteController
  alias VrpBenchmarkDataServiceWeb.ProblemController
  alias VrpBenchmarkDataServiceWeb.SolutionController
  alias VrpBenchmarkDataServiceWeb.RemainingRunsController
  alias VrpBenchmarkDataServiceWeb.SolverController
  alias VrpBenchmarkDataServiceWeb.SolverInstancesController
  use VrpBenchmarkDataServiceWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_live_flash)
    plug(:put_root_layout, html: {VrpBenchmarkDataServiceWeb.Layouts, :root})
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", VrpBenchmarkDataServiceWeb do
    pipe_through(:browser)

    get("/", PageController, :home)
  end

  scope "/api" do
    pipe_through(:api)

    get("/problems", ProblemController, :index)
    get("/problems/:id", ProblemController, :show)
    put("/problems/:id", ProblemController, :edit)
    post("/problems", ProblemController, :create)
    delete("/problems/:id", ProblemController, :delete)

    post("/benchmark_suites", BenchmarkSuiteController, :create)
    post("/benchmark_suites/remaining_runs", RemainingRunsController, :create)

    post("/solvers", SolverController, :create)

    post("/solver_instances", SolverInstancesController, :create)

    post("/solutions", SolutionController, :create)
  end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:vrp_benchmark_data_service, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through(:browser)

      live_dashboard("/dashboard", metrics: VrpBenchmarkDataServiceWeb.Telemetry)
      forward("/mailbox", Plug.Swoosh.MailboxPreview)
    end
  end
end
