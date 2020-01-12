use Mix.Config

# Configure your database
config :cheese_server, CheeseServer.Repo,
  username: "postgres",
  password: "postgres",
  database: "cheese_server_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :cheese_server, CheeseServerWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
