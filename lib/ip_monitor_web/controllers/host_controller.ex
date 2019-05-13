defmodule IPMonitorWeb.HostController do
  use IPMonitorWeb, :controller

  alias Hosts

  def create(conn, attrs) do
    opts = [consistency: :strong, timeout: :timer.seconds(15)]
    result = Hosts.create_host(attrs, opts)

    json(conn, %{result: result})
  end

  def index(conn, _) do
    json(conn, "here")
  end
end
