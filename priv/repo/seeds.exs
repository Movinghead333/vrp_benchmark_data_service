alias VrpBenchmarkDataService.Problems
# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     VrpBenchmarkDataService.Repo.insert!(%VrpBenchmarkDataService.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

IO.inspect(Problems.create_problem(%{name: "Testproblem 1"}))

IO.inspect(Problems.create_problem(%{name: "Testproblem 2"}))
