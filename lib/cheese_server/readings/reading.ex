defmodule CheeseServer.Readings.Reading do
  use Ecto.Schema
  import Ecto.Changeset

  alias CheeseServer.Readings.ReadingCategory

  schema "readings" do
    belongs_to :reading_category, ReadingCategory
    field :value, :decimal
    field :reading_at, :utc_datetime

    timestamps()
  end

  @doc false
  def changeset(reading, attrs) do
    reading
    |> cast(attrs, [:reading_category_id, :value, :reading_at])
    |> validate_required([:reading_category_id, :value, :reading_at])
  end
end
