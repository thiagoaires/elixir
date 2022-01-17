# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rockerlivery,
  ecto_repos: [Rockerlivery.Repo]

config :rockerlivery, Rockerlivery.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures the endpoint
config :rockerlivery, RockerliveryWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0qQnNjphpBzQN3U5caoJoaAZZcV/5UdArOByOM6OGbksIXM3lRI7kc6m1E0hmWes",
  render_errors: [view: RockerliveryWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Rockerlivery.PubSub,
  live_view: [signing_salt: "kZ8oVlBW"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
