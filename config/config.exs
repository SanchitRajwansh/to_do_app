use Mix.Config

config :to_do, MyApp.Repo,
  database: "to_do_repo",
  username: "sanchitrajwansh",
  password: "postgres",
  hostname: "localhost"

config :to_do,
  ecto_repos: [ToDo.Repo]

import_config "#{Mix.env()}.exs"
