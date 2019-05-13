defmodule Hosts do
  alias Hosts.Router

  def create_host(attrs, opts \\ []) do
    alias Hosts.Commands.CreateHost
    # struct(CreateHost, attrs)
    %CreateHost{
      name: attrs["name"],
      hostname: attrs["hostname"],
      status: attrs["status"]
    }
    |> Router.dispatch(opts)
  end
end
