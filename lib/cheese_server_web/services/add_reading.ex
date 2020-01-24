defmodule CheeseServerWeb.Services.AddReading do
  alias CheeseServer.Readings.{Reading, ReadingCategory}
  alias CheeseServer.Repo

  def perform(args) do
    reading_category = ReadingCategory.find_or_create_by_name(args[:name])
    Map.merge(
      %Reading{reading_category: reading_category},
      Map.take(args, [:value, :reading_at])
      )
    |> Repo.insert
  end
end
