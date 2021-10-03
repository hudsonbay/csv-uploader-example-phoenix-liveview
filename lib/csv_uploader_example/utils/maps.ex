defmodule CsvUploaderExample.Utils do
  @moduledoc """
  Conveniences for working with maps
  """
  @doc """
  Converts a map from "id" => 1 to id: 1
  """
  def cast_map(res), do: cast(res)

  defp cast(map) when is_map(map), do: Map.new(map, &cast(&1))
  defp cast(list) when is_list(list), do: Enum.map(list, &cast(&1))
  defp cast({k, v}) when is_map(v), do: {String.to_atom(k), cast(v)}
  defp cast({k, v}) when is_list(v), do: {String.to_atom(k), cast(v)}
  defp cast({k, v}), do: {String.to_atom(k), v}
end
