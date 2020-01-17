defmodule CheeseServerWeb.Schema.Types do
  use Absinthe.Schema.Notation

  object :reading do
    field :id, :id
    field :value, :float
  end
end
