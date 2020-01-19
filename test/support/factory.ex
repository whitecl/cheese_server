defmodule CheeseServer.Factory do
  use ExMachina.Ecto, repo: CheeseServer.Repo

  alias CheeseServer.Readings

  def reading_category_factory do
    %Readings.ReadingCategory{
      name: sequence(:name, &"Category #{&1})")
    }
  end
end
