defmodule Hosts.Commands.CreateHost do
  @derive Jason.Encoder

  defstruct [:id, :hostname, :name, :status]
end
