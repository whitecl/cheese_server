defmodule CheeseServer.Readings.ReadingCategory do
  use Ecto.Schema
  import Ecto.Changeset
  alias CheeseServer.Repo
  alias CheeseServer.Readings.ReadingCategory

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

  def find_or_create_by_name(name) do
    case Repo.get_by(ReadingCategory, name: name) do
      nil ->
        {:ok, category} = Repo.insert(%ReadingCategory{name: name})
        category
      category ->
        category
    end
  end
end
