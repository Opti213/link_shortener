defmodule LinkShortenerWeb.RegisterControllerTest do
  use LinkShortenerWeb.ConnCase

  test "POST /new_url", %{conn: conn} do
    conn = post(conn, "/new_url", %{"full_url" => "https://google.com"})
    assert json_response(conn, 200) == %{"short_url" => "https://google.com"}
  end
end
