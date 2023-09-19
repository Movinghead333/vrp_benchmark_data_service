defmodule VrpBenchmarkDataServiceWeb.ProblemController do
  use VrpBenchmarkDataServiceWeb, :controller

  alias VrpBenchmarkDataService.Problems
  alias VrpBenchmarkDataService.Problems.Problem

  action_fallback(VrpBenchmarkDataServiceWeb.FallbackController)

  def index(conn, _params) do
    problems = Problems.list_problems()
    render(conn, :index, problems: problems)
  end

  def create(conn, problem_json) do
    with {:ok, %Problem{} = problem} <- Problems.create_complete_problem(problem_json) do
      send_resp(conn, 200, "Problem with ID #{problem.id} created successfully.")

      # conn
      # |> put_status(:created)
      # |> put_resp_header("location", ~p"/api/problems/#{problem}")
      # |> render(:show, problem: problem)
    end
  end

  def show(conn, %{"id" => name}) do
    problem = Problems.get_complete_problem(name)

    render(conn, :show, problem: problem)
  end

  def update(conn, %{"id" => id, "problem" => problem_params}) do
    problem = Problems.get_problem!(id)

    with {:ok, %Problem{} = problem} <- Problems.update_problem(problem, problem_params) do
      render(conn, :show, problem: problem)
    end
  end

  def delete(conn, %{"id" => id}) do
    problem = Problems.get_problem!(id)

    result = Problems.delete_problem(problem)

    with {:ok, %Problem{}} <- result do
      send_resp(conn, :no_content, "")
    end
  end
end
