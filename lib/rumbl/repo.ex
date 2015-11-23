defmodule Rumbl.Repo do
  # use Ecto.Repo, otp_app: :rumbl

  @moduledoc """
  In memory repository.
  """

  def all(Rumbl.User) do
    [ %Rumbl.User{id: "1", name: "Mohamad El-Husseini", username: "abitdodgy", password: "abitdodgy"},
      %Rumbl.User{id: "2", name: "Sami El-Husseini", username: "sami", password: "sami"},
      %Rumbl.User{id: "3", name: "Dani El-Husseini", username: "dani", password: "dani"}]
  end
  def all(_module), do: []

  def get(module, id) do
    Enum.find all(module), fn map ->
      map.id == id
    end
  end

  def get_by(module, params) do
    Enum.find all(module), fn map ->
      Enum.all?(params, fn {key, value} ->
        Map.get(map, key) == value
      end)
    end
  end
end
