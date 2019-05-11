defmodule IPMonitorWeb.Router do
  use IPMonitorWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", IPMonitorWeb do
    pipe_through :api
  end
end
