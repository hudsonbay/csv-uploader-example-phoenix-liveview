defmodule CsvUploaderExampleWeb.HomepageLive.Index do
  use CsvUploaderExampleWeb, :live_view

  @impl Phoenix.LiveView
  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> allow_upload(:csv, accept: ~w(.csv), max_entries: 1)}
  end

  @impl Phoenix.LiveView
  def handle_event("save", _params, socket) do
    consume_uploaded_entries(socket, :csv, fn meta, entry ->
      dest = Path.join("priv/static/uploads", "#{entry.uuid}.csv")
      File.cp!(meta.path, dest)
      read_csv(dest)
    end)

    {:noreply, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("validate", _params, socket) do
    {:noreply, socket}
  end

  defp read_csv(file) do
    file
    |> File.stream!()
    |> CSV.decode(separator: ?|, headers: true)
    |> Enum.map(fn {:ok, branch} -> branch end)
    |> IO.inspect()
  end
end
