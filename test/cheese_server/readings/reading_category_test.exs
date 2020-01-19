defmodule CheeseServer.Readings.ReadingCategoryTest do
  use ExUnit.Case
  use CheeseServer.DataCase
  alias CheeseServer.Readings.ReadingCategory

  describe "find_or_create_by/1" do
    test "when a reading category by that name already exists it returns the existing ReadingCategory" do
      existing_category = insert(:reading_category)
      loaded_category = ReadingCategory.find_or_create_by_name(existing_category.name)

      assert loaded_category.id == existing_category.id
    end

    test "when a reading category by that name does not already exist it returns a created ReadingCategory" do
      loaded_category = ReadingCategory.find_or_create_by_name("missingno")

      assert is_integer(loaded_category.id)
    end
  end
end
