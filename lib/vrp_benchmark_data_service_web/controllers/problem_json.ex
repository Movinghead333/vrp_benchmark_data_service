defmodule VrpBenchmarkDataServiceWeb.ProblemJSON do
  alias VrpBenchmarkDataService.Problems.Problem

  @doc """
  Renders a list of problems.
  """
  def index(%{problems: problems}) do
    %{data: for(problem <- problems, do: data(problem))}
  end

  @doc """
  Renders a single problem.
  """
  def show(%{problem: problem}) do
    %{data: data(problem)}
  end

  defp data(%Problem{} = problem) do
    %{
      id: problem.id,
      name: problem.name
    }
  end
end
