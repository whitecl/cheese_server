defmodule CheeseServer.Readings.ReadingCategory do
  use Ecto.Schema
  import Ecto.Changeset

  schema "reading_categories" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(reading_category, attrs) do
    reading_category
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
