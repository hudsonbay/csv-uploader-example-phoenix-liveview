defmodule DataComponent do
  use CsvUploaderExampleWeb, :live_component

  def render(assigns) do
    ~H"""
    <article class="column">
      <h2>Data</h2>

    </article>
    """
  end
end
