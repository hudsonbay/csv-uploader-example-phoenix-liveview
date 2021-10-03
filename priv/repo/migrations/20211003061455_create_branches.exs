defmodule CsvUploaderExample.Repo.Migrations.CreateBranches do
  use Ecto.Migration

  def change do
    create table(:branches) do
      add :part_number, :string
      add :branch_id, :string
      add :part_price, :decimal
      add :short_desc, :string
    end
  end
end
