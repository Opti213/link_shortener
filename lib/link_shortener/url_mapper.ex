defmodule LinkShortener.URLMapper do
  @moduledoc """
  The Url_mapping model.
  """

  use Ecto.Schema

  schema "url_mapping" do
    field(:full_url, :string, unique: true)
    field(:short_url, :string)
  end
end
