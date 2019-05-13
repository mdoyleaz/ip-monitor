defmodule Hosts.Projectors.HostHandler do
  use Commanded.Event.Handler, name: "Hosts.Projectors.HostHandler", start_from: :current

  require Logger

  alias Hosts.Events.HostCreated
  alias Hosts.Projections.Host
  alias IPMonitor.Repo

  def handle(%HostCreated{} = event, _metadata) do
    event
    |> Map.from_struct()
    |> Map.put(:id, UUID.uuid4())
    |> Host.changeset()
    |> Repo.insert()

    :ok
  end

  def error(error, _failed_event, context) do
    Logger.warn(inspect(error, label: "Hosts.Projectors.HostHandler"))
    Logger.warn(inspect(context, label: "context"))
    :skip
  end
end
