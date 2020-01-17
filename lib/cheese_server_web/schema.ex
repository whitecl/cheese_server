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

end
