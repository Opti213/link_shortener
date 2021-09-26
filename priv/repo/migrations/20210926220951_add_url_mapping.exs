defmodule LinkShortener.Repo.Migrations.AddUrlMapping do
  use Ecto.Migration

  def change do
    create table(:url_mapping) do
      add :full_url, :string, primory_key: true
      add :short_url, :string
    end
  end
end
