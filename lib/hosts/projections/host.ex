defmodule Hosts.Projections.Host do
  use Ecto.Schema

  alias Hosts.Projections.Host

  @primary_key false
  schema "servers" do
    field :id, :binary_id, primary_key: true
    field :hostname, :string
    field :name, :string
    field :status, :string, default: "active"

    timestamps()
  end

  import Ecto.Changeset

  def changeset(attrs) do
    %Host{}
    |> cast(attrs, [:id, :hostname, :name, :status])
    |> validate_required([:id, :hostname, :name, :status])
  end
end
