defmodule DataComponent do
  use CsvUploaderExampleWeb, :live_component

  def render(assigns) do
    ~H"""
    <div class="w-full md:w-2/3 p-6 flex flex-col flex-grow flex-shrink">
          <table class="table-auto border border-collapse">
            <thead>
              <tr>
                <th class="border-2 border-black-600">PART NUMBER</th>
                <th class="border-2">BRANCH ID</th>
                <th class="border-2">PART PRICE</th>
                <th class="border-2">SHORT DESC</th>
              </tr>
            </thead>
            <tbody>
              <tr class="bg-emerald-200">
                <td class="border">7344357</td>
                <td class="border">1</td>
                <td class="border">98.00</td>
                <td class="border">GALV x FAB x 0121F00548 x 16093 x .026 x 29.88 x 17.56</td>
              </tr>
            </tbody>
          </table>
    </div>
    """
  end
end
