use Mix.Config

config :phoenix, Geoweight.Router,
  http: [port: System.get_env("PORT") || 4001],
