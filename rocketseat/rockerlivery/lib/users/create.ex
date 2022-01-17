defmodule Rockerlivery.Users.Create do
  alias Rockerlivery.{Repo, User}
  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()

  end

end
