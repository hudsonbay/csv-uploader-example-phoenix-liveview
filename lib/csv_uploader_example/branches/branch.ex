defmodule CsvUploaderExample.Branches.Branch do
  use Ecto.Schema
  import Ecto.Changeset

  schema "branches" do
    field :branch_id, :string
    field :part_number, :string
    field :part_price, :decimal
    field :short_desc, :string
  end

  @doc false
  def changeset(branch, attrs) do
    branch
    |> cast(attrs, [:part_number, :branch_id, :part_price, :short_desc])
    |> validate_required([:part_number, :branch_id, :part_price, :short_desc])
  end
end
