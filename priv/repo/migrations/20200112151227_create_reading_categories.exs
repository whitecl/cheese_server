defmodule CheeseServer.Repo.Migrations.CreateReadingCategories do
  use Ecto.Migration

  def change do
    create table(:reading_categories) do
      add :name, :string

      timestamps()
    end

  end
end
