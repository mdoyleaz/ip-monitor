defmodule IPMonitorWeb.HostController do
  use IPMonitorWeb, :controller

  def create(conn, attrs) do
    json(conn, attrs)
  end

  def index(conn, _) do
    json(conn, "here")
  end
end
