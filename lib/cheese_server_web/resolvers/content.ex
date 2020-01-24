defmodule CheeseServerWeb.Resolvers.Content do
  alias CheeseServer.Repo
  alias CheeseServer.Readings.Reading
  alias CheeseServerWeb.Services.AddReading

  def list_readings(_parent, _args, _resolution) do
    {:ok, Repo.all(Reading)}
  end

  def add_reading(_parent, args, _resolution) do
    AddReading.perform(args)
  end
end
