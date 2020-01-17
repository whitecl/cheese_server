defmodule CheeseServer.Repo.Migrations.CreateReadings do
  use Ecto.Migration

  def change do
    create table(:readings) do
      add :reading_category_id, references("reading_categories")
      add :value, :decimal
      add :timestamp, :utc_datetime
    end
  end
end
