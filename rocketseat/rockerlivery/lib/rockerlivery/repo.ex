defmodule Rockerlivery.Repo do
  use Ecto.Repo,
    otp_app: :rockerlivery,
    adapter: Ecto.Adapters.Postgres
end
