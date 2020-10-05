# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :remote_containers,
  ecto_repos: [RemoteContainers.Repo]

# Configures the endpoint
config :remote_containers, RemoteContainersWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7khkDGxpr4SY9voO9IPGBszPFUp83Eb5lJLjUjIn72j7J32d/2GPUP3r1iLkkbDy",
  render_errors: [view: RemoteContainersWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: RemoteContainers.PubSub,
  live_view: [signing_salt: "sjwN0Ob0"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
