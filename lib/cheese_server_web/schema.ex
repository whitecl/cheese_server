defmodule CheeseServerWeb.Schema do
  use Absinthe.Schema
  import_types CheeseServerWeb.Schema.Types

  alias CheeseServerWeb.Resolvers

  query do

    @desc "Get all readings"
    field :readings, list_of(:reading) do
      resolve &Resolvers.Content.list_readings/3
    end

  end

  mutation do
    @desc "Add a reading"
    field :add_reading, type: :reading do
      arg :value, non_null(:float)
      arg :category_name, non_null(:string)
      arg :reading_at, non_null(:integer)

      resolve &Resolvers.Content.add_reading/3
    end
  end
end
