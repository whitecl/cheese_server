defmodule CheeseServerWeb.Resolvers.ContentTest do
  use CheeseServerWeb.ConnCase
  alias CheeseServerWeb.AbsintheHelpers

  describe "add_reading/3" do
    test "it adds a reading" do
      query = """
        mutation {
          addReading(categoryName: "Category Name", value: 10.5, reading_at: 1579901623) {
            id
          }
        }
      """

      response_data = build_conn()
        |> post("/api/graphiql", AbsintheHelpers.mutation_skeleton(query))
        |> json_response(200)

      require IEx; IEx.pry
      assert response_data["errors"] == nil
      assert String.length(response_data["data"]["addReading"]["id"]) > 0
    end
  end
end
