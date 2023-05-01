defmodule ToDo.Router do
  use Plug.Router
  alias ToDo.RequestController

  plug(:match)
  plug(:dispatch)

  plug(Plug.Parsers,
    parsers: [:json],
    pass: ["text/*"],
    json_decoder: Jason
  )

  get "/hello/:id" do
    IO.inspect(conn, label: "sanchit rajwansh is here")
    RequestController.index(conn, conn.params)
  end

  get "/fetch_all" do
    RequestController.fetch_all(conn, conn.params)
  end

  match _ do
    send_resp(conn, 404, "oops")
  end
end
