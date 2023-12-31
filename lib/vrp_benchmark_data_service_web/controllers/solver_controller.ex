defmodule VrpBenchmarkDataServiceWeb.SolverController do
  use VrpBenchmarkDataServiceWeb, :controller

  alias VrpBenchmarkDataService.Solvers
  alias VrpBenchmarkDataService.Solvers.Solver

  def create(conn, solver_specification_json) do
    with {:ok, %Solver{} = solver} <-
           Solvers.create_complete_solver(solver_specification_json) do
      send_resp(conn, 200, "Solver with ID #{solver.id} created successfully.")
    else
      {:error, %Ecto.Changeset{errors: [unique_name_version: {msg, _}]}} ->
        send_resp(conn, 409, msg)
    end
  end
end
