defmodule LinkShortenerWeb.PageController do
  use LinkShortenerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
