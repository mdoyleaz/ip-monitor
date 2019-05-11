defmodule IPMonitor.Repo do
  use Ecto.Repo,
    otp_app: :ip_monitor,
    adapter: Ecto.Adapters.Postgres
end
