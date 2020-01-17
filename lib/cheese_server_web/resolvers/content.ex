defmodule CheeseServerWeb.Resolvers.Content do
  alias CheeseServer.Repo
  alias CheeseServer.Readings.Reading

  def list_readings(_parent, _args, _resolution) do
    {:ok, Repo.all(Reading)}
  end
end
