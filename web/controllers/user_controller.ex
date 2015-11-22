defmodule Rumbl.UserController do
  use Rumbl.Web, :controller

  def index(conn, _) do
    users = Repo.all(Rumbl.User)
    render conn, "index.html", users: users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(Rumbl.User, id)
    IO.inspect user
    render conn, "show.html", user: user
  end
end