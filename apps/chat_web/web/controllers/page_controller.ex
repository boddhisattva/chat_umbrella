defmodule ChatWeb.PageController do
  use ChatWeb.Web, :controller

  def index(conn, _params) do
    message = ChatBackend.get_message()
    render conn, "index.html", message: message
  end
end
