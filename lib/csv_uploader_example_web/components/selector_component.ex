defmodule SelectorComponent do
  use CsvUploaderExampleWeb, :live_component

  @impl true
  def mount(socket) do
    {:ok,
     socket
     |> allow_upload(:csv, accept: ~w(.csv), max_entries: 1)}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <article class="column">
      <h2>Selector</h2>
      <form id="upload-form" phx-submit="save" phx-change="validate">
        <%= live_file_input @uploads.csv %>
        <button type="submit">Upload</button>
      </form>

    </article>
    """
  end
end
