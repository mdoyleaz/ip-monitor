defmodule Hosts.Supervisor do
  use Supervisor

  # alias Hosts

  def start_link(_) do
    Supervisor.start_link(__MODULE__, nil)
  end

  def init(_) do
    children = [
      worker(Hosts.Projectors.HostHandler, [], id: :host_created)
    ]

    supervise(children, strategy: :one_for_one)
  end
end
