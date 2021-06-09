# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_blog,
  ecto_repos: [ElixirBlog.Repo]

# Configures the endpoint
config :elixir_blog, ElixirBlogWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qxC25NuLzAOaQZ0S5T6m0KeR99SMCpGWqG+LKx/jyD+ggD6fcsRAihelqJc/5Oli",
  render_errors: [view: ElixirBlogWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ElixirBlog.PubSub,
  live_view: [signing_salt: "2w/cAmuM"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
