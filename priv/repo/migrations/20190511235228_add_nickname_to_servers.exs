defmodule IPMonitor.Repo.Migrations.AddNicknameToServers do
  use Ecto.Migration

  def change do
    alter table(:servers) do
      add :name, :string
    end
  end
end
