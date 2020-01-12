defmodule CheeseServerWeb.PageController do
  use CheeseServerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
