use Mix.Config

config :issues, github_url: "https://api.github.com"

config :logger, compile_time_purge_level: :info
# config :logger, compile_time_purge_matching: :info

import_config "#{Mix.env()}.exs"
