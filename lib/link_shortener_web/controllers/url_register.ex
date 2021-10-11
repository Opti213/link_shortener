defmodule LinkShortenerWeb.URLRegisterConroller do
  use LinkShortenerWeb, :controller
  # alias LinkShortener.Repo, as: Repo

  @spec create(Plug.Conn.t(), map) :: Plug.Conn.t()
  def create(conn, %{"full_url" => full_url}) do
    json(conn, %{short_url: full_url})
  end
end
