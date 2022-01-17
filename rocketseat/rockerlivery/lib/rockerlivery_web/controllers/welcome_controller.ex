defmodule RockerliveryWeb.WelcomeController do
  use RockerliveryWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> json(%{message: "welcome" })
    |> IO.inspect()
  end
end
