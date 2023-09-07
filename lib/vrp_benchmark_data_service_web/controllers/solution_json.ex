defmodule VrpBenchmarkDataServiceWeb.SolutionJSON do
  alias VrpBenchmarkDataService.Solutions.Solution
  alias VrpBenchmarkDataService.Solutions

  @doc """
  Renders a list of solutions.
  """
  def index(%{solutions: solutions}) do
    %{data: for(solution <- solutions, do: solution)}
  end

  @doc """
  Renders a single solution.
  """
  def show(%{solution: solution}) do
    %{"computation_time" => solution.computation_time}
  end
end
