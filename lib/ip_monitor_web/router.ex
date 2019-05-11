defmodule IPMonitorWeb.Router do
  use IPMonitorWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", IPMonitorWeb do
    pipe_through :api

    scope "/hosts" do
      get("/", HostController, :index)
      post("/", HostController, :create)
    end
  end
end
