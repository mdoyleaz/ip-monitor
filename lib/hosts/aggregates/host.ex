defmodule Hosts.Aggregates.Host do
  defstruct [:id, :hostname, :name, :status]

  alias Hosts.Aggregates.Host
  alias Hosts.Commands.CreateHost
  alias Hosts.Events.HostCreated

  def execute(%Host{id: nil}, %CreateHost{
        hostname: hostname,
        name: name,
        status: status
      }) do
    %HostCreated{hostname: hostname, name: name, status: status}
  end

  def execute(%Host{}, %CreateHost{}) do
    {:error, :hostname_is_unavailiable}
  end

  def apply(%Host{} = host, %HostCreated{name: name, hostname: hostname, status: status}) do
    %Host{host | name: name, hostname: hostname, status: status}
  end
end
