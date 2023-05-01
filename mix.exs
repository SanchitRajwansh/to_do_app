defmodule ToDo.MixProject do
  use Mix.Project

  def project do
    [
      app: :to_do,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :dev,
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :ecto],
      mod: {ToDo.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug_cowboy, "~> 2.6.1"},
      {:jason, "~> 1.4.0"},
      {:ecto, "~> 3.7"},
      {:postgrex, "~> 0.15"},
      {:ecto_sql, "~> 3.5"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp aliases do
    [
      "ecto.setup": ["ecto.create", "ecto.migrate --log-sql", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"]
    ]
  end
end
