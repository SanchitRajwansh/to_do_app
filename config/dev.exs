use Mix.Config

# Configure your database
config :to_do, ToDo.Repo,
  username: "sanchitrajwansh",
  password: "postgres",
  database: "to_do_repo",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  port: 5432,
  pool_size: 10
