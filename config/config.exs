# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the router
config :phoenix, Geoweight.Router,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "R1T9BXcIG7YuVOVUeTJW7MgU9oxGS2u7wcsQJAtr4jVkJbmn8n0ja6JeZXWEcK9IpsAh15N8PlhZxHbYq/JRWA==",
  debug_errors: false,
  error_controller: Geoweight.PageController

# Session configuration
config :phoenix, Geoweight.Router,
  session: [store: :cookie,
            key: "_geoweight_key"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
