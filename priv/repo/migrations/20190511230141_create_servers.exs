defmodule IPMonitor.Repo.Migrations.CreateServers do
  use Ecto.Migration

  def change do
    create table(:servers, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :hostname, :string
      add :status, :string

      timestamps()
    end
  end
end
