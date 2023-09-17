defmodule VrpBenchmarkDataServiceWeb.SolutionController do
  use VrpBenchmarkDataServiceWeb, :controller

  alias VrpBenchmarkDataService.Solutions
  alias VrpBenchmarkDataService.Solutions.Solution

  action_fallback(VrpBenchmarkDataServiceWeb.FallbackController)

  def create(conn, solution_json) do
    with {:ok, %Solution{} = solution} <- Solutions.create_complete_solution(solution_json) do
      send_resp(conn, 200, "Solution with ID #{solution.id} created successfully.")

      # conn
      # |> put_status(:created)
      # |> put_resp_header("location", ~p"/api/solution/#{solution}")
      # |> render(:show, solution: solution)
    end
  end

  # def show(conn, %{"id" => name}) do
  #   solution = Solutions.get_complete_solution(name)

  #   render(conn, :show, solution: solution)
  # end
end
