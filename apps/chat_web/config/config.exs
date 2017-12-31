# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :chat_web, ChatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mK+xY7cf6qUsxaV4uXo94V4wDB6/qWhJBOYC+r5rYDbFOBvU/TCuDkWua1LNgLui",
  render_errors: [view: ChatWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ChatWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
