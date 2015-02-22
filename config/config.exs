# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :yearly, Yearly.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pMwbUPtxE4eMIwEXxJdNsKXoNsLFD8N1A5FIkZWtOW5mabaGCdK1vg0U2uOqpnsP",
  debug_errors: false,
  pubsub: [adapter: Phoenix.PubSub.PG2]


# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
