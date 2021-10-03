defmodule CsvUploaderExample.BranchesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `CsvUploaderExample.Branches` context.
  """

  @doc """
  Generate a branch.
  """
  def branch_fixture(attrs \\ %{}) do
    {:ok, branch} =
      attrs
      |> Enum.into(%{
        branch_id: "some branch_id",
        part_number: "some part_number",
        part_price: "120.5",
        short_desc: "some short_desc"
      })
      |> CsvUploaderExample.Branches.create_branch()

    branch
  end
end
