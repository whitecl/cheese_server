# https://tosbourn.com/testing-absinthe-exunit/

defmodule CheeseServerWeb.AbsintheHelpers do
  def mutation_skeleton(query) do
    %{
      "operationName" => "",
      "query" => "#{query}",
      "variables" => ""
    }
  end
end
