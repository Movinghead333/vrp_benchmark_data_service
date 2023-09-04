defmodule VrpBenchmarkDataServiceWeb.ProblemControllerTest do
  use VrpBenchmarkDataServiceWeb.ConnCase

  import VrpBenchmarkDataService.ProblemsFixtures

  alias VrpBenchmarkDataService.Problems.Problem

  @create_attrs %{
    name: "some name"
  }
  @update_attrs %{
    name: "some updated name"
  }
  @invalid_attrs %{name: nil}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all problems", %{conn: conn} do
      conn = get(conn, ~p"/api/problems")
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create problem" do
    test "renders problem when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/api/problems", problem: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, ~p"/api/problems/#{id}")

      assert %{
               "id" => ^id,
               "name" => "some name"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/api/problems", problem: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update problem" do
    setup [:create_problem]

    test "renders problem when data is valid", %{conn: conn, problem: %Problem{id: id} = problem} do
      conn = put(conn, ~p"/api/problems/#{problem}", problem: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, ~p"/api/problems/#{id}")

      assert %{
               "id" => ^id,
               "name" => "some updated name"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, problem: problem} do
      conn = put(conn, ~p"/api/problems/#{problem}", problem: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete problem" do
    setup [:create_problem]

    test "deletes chosen problem", %{conn: conn, problem: problem} do
      conn = delete(conn, ~p"/api/problems/#{problem}")
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, ~p"/api/problems/#{problem}")
      end
    end
  end

  defp create_problem(_) do
    problem = problem_fixture()
    %{problem: problem}
  end
end
