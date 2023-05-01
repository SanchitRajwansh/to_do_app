defmodule ToDo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      ToDo.Repo,
      Plug.Cowboy.child_spec(scheme: :http, plug: ToDo.Router, options: [port: 4001])
    ]

    # Starts a worker by calling: ToDo.Worker.start_link(arg)
    # {ToDo.Worker, arg}

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ToDo.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
