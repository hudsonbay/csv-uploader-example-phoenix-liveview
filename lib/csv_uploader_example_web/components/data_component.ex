defmodule DataComponent do
  use CsvUploaderExampleWeb, :live_component

  def render(assigns) do
    ~H"""
    <article class="column">
      <h2>Data</h2>

      <table class="table table-striped table-bordered">
        <thead>
          <tr>
            <th scope="col">PART_NUMBER</th>
            <th scope="col">BRANCH_ID</th>
            <th scope="col">PART_PRICE</th>
            <th scope="col">SHORT_DESC</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">7344357</th>
            <td>1</td>
            <td>98.00</td>
            <td>GALV x FAB x 0121F00548 x 16093 x .026 x 29.88 x 17.56</td>
          </tr>
        </tbody>
      </table>
    </article>
    """
  end
end
