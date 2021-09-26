defmodule CsvUploaderExampleWeb.PageControllerTest do
  use CsvUploaderExampleWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "CSV Uploader"
  end
end
