defmodule ToDo.RequestController do
  import Plug.Conn
  alias ToDo.ListOperations

  def index(conn, params) do
    IO.inspect(params, label: "sanchit is here")
    send_resp(conn, 200, "Hello everyone #{inspect(params)}")
  end

  def fetch_all(conn, _params) do
    res = ListOperations.get_all()
    IO.inspect(res, label: "this is the result")
    send_resp(conn, 200, length(res))
  end
end
