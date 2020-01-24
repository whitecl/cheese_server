defmodule CheeseServerWeb.Services.AddReading do
  alias CheeseServer.Readings.{Reading, ReadingCategory}
  alias CheeseServer.Repo

  def perform(args) do
    reading_category = ReadingCategory.find_or_create_by_name(args[:category_name])
    {:ok, reading_at} = DateTime.from_unix(args[:reading_at])

    Repo.insert(%Reading{
      reading_category: reading_category,
      value: args[:value],
      reading_at: reading_at
    })
  end
end
