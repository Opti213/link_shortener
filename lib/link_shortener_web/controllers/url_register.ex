defmodule LinkShortenerWeb.URLRegisterConroller do
  use LinkShortenerWeb, :controller

  alias LinkShortener.URLShortenerService
  # alias LinkShortener.Repo, as: Repo

  @spec create(Plug.Conn.t(), map) :: Plug.Conn.t()
  def create(conn, %{"full_url" => full_url}) do
    IO.puts(LinkShortenerWeb.Endpoint.host())
    # todo url builder with check scheme
    json(conn, %{
      short_url:
        "https://" <>
          conn.host() <> ":" <> Integer.to_string(conn.port()) <>
          "/" <> URLShortenerService.shortener(full_url)
    })
  end
end
