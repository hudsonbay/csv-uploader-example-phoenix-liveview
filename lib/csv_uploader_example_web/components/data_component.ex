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
            <%= for branch <- @branches do %>
            <tr class="bg-emerald-200">
              <td class="border"><%= branch.part_number %></td>
              <td class="border"><%= branch.branch_id %></td>
              <td class="border"><%= branch.part_price %></td>
              <td class="border"><%= branch.short_desc %></td>
            </tr>
            <% end %>
            </tbody>
          </table>
    </div>
    """
  end
end
