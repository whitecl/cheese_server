defmodule CheeseServer.Services.AddReadingTest do
  use ExUnit.Case
  use CheeseServer.DataCase
  alias CheeseServerWeb.Services.AddReading

  describe "perform/1" do
    test "it creates and returns reading based on the passed arguments" do
      args = %{name: "Reading Category", value: 12.2, reading_at: DateTime.truncate(DateTime.utc_now, :second)}
      {:ok, result} = AddReading.perform(args)

      assert result.value == 12.2
      assert result.reading_category.name == "Reading Category"
      assert DateTime.to_unix(result.reading_at) > 0
    end
  end
end
