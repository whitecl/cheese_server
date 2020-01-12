defmodule CheeseServer.Repo do
  use Ecto.Repo,
    otp_app: :cheese_server,
    adapter: Ecto.Adapters.Postgres
end
