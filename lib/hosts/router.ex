defmodule Hosts.Router do
  use Commanded.Commands.Router

  alias Hosts.Commands.CreateHost
  alias Hosts.Aggregates.Host

  dispatch(CreateHost, to: Host, identity: :name)
end
