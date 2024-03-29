# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ip_monitor,
  namespace: IPMonitor,
  ecto_repos: [IPMonitor.Repo]

# Configures the endpoint
config :ip_monitor, IPMonitorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "J9pZ4HlvrvB44wZKANtJPqFL9p4vtkeZ6kPoc5NWOzAi+bXwdMqf3rtu+1tyT+Ra",
  render_errors: [view: IPMonitorWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: IPMonitor.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

# Eventstore config
config :commanded,
  event_store_adapter: Commanded.EventStore.Adapters.EventStore
