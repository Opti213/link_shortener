defmodule LinkShortener.URLShortenerService do
  @moduledoc """
  The services to shortener URLs.
  """

  def shortener(url) do
    :crypto.hash(:md5, url)
    |> Base.encode16()
  end
end
