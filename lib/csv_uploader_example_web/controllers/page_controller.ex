defmodule CsvUploaderExampleWeb.PageController do
  use CsvUploaderExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
