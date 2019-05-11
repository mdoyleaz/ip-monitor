use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ip_monitor, IPMonitorWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :ip_monitor, IPMonitor.Repo,
  username: "postgres",
  password: "postgres",
  database: "ip_monitor_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :commanded,
  event_store_adapter: Commanded.EventStore.Adapters.InMemory

config :commanded, Commanded.EventStore.Adapters.InMemory,
  serializer: Commanded.Serialization.JsonSerializer

config :eventstore, EventStore.Storage,
  serializer: Commanded.Serialization.JsonSerializer,
  username: "postgres",
  password: "postgres",
  database: "ip_monitor_eventstore_dev",
  ownership_timeout: 60_000,
  pool: Ecto.Adapters.SQL.Sandbox
