defmodule CsvUploaderExampleWeb.HomepageLive.Index do
  use CsvUploaderExampleWeb, :live_view

  @impl Phoenix.LiveView
  def mount(_params, _session, socket) do
    {:ok,
    socket
    |> allow_upload(:csv, accept: ~w(.csv), max_entries: 1)}
  end

  @impl Phoenix.LiveView
  def handle_event("validate", _params, socket) do
  {:noreply, socket}
  end
end
