defmodule CsvUploaderExampleWeb.HomepageLive.Index do
  use CsvUploaderExampleWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, %{})}
  end
end
