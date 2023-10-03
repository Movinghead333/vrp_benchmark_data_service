defmodule VrpBenchmarkDataServiceWeb.SolverInstancesController do
  use VrpBenchmarkDataServiceWeb, :controller

  alias VrpBenchmarkDataService.Solvers
  alias VrpBenchmarkDataService.Solvers.SolverInstance

  def create(conn, solver_instance_specification_json) do
    with {:ok, %SolverInstance{} = solver_instance} <-
           Solvers.create_complete_solver_instance(solver_instance_specification_json) do
      send_resp(conn, 200, "Solver instance with ID #{solver_instance.id} created successfully.")
    else
      {:error, :solver_instance_does_already_exist} ->
        send_resp(conn, 409, "The solver instance could not be created since it already exists.")
        # conn
        # |> put_status(:created)
        # |> put_resp_header("location", ~p"/api/problems/#{problem}")
        # |> render(:show, problem: problem)
    end
  end
end
