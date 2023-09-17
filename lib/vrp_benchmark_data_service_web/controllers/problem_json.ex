defmodule VrpBenchmarkDataServiceWeb.ProblemJSON do
  alias VrpBenchmarkDataService.Problems

  @doc """
  Renders a list of problems.
  """
  def index(%{problems: problems}) do
    %{data: for(problem <- problems, do: Problems.convert_complete_problem_to_json(problem))}
  end

  @doc """
  Renders a single problem.
  """
  def show(%{problem: problem}) do
    Problems.convert_complete_problem_to_json(problem)
  end
end
