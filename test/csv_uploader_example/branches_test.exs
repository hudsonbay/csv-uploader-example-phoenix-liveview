defmodule CsvUploaderExample.BranchesTest do
  use CsvUploaderExample.DataCase

  alias CsvUploaderExample.Branches

  describe "branches" do
    alias CsvUploaderExample.Branches.Branch

    import CsvUploaderExample.BranchesFixtures

    @invalid_attrs %{branch_id: nil, part_number: nil, part_price: nil, short_desc: nil}

    test "list_branches/0 returns all branches" do
      branch = branch_fixture()
      assert Branches.list_branches() == [branch]
    end

    test "get_branch!/1 returns the branch with given id" do
      branch = branch_fixture()
      assert Branches.get_branch!(branch.id) == branch
    end

    test "create_branch/1 with valid data creates a branch" do
      valid_attrs = %{
        branch_id: "some branch_id",
        part_number: "some part_number",
        part_price: "120.5",
        short_desc: "some short_desc"
      }

      assert {:ok, %Branch{} = branch} = Branches.create_branch(valid_attrs)
      assert branch.branch_id == "some branch_id"
      assert branch.part_number == "some part_number"
      assert branch.part_price == Decimal.new("120.5")
      assert branch.short_desc == "some short_desc"
    end

    test "create_branch/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Branches.create_branch(@invalid_attrs)
    end

    test "update_branch/2 with valid data updates the branch" do
      branch = branch_fixture()

      update_attrs = %{
        branch_id: "some updated branch_id",
        part_number: "some updated part_number",
        part_price: "456.7",
        short_desc: "some updated short_desc"
      }

      assert {:ok, %Branch{} = branch} = Branches.update_branch(branch, update_attrs)
      assert branch.branch_id == "some updated branch_id"
      assert branch.part_number == "some updated part_number"
      assert branch.part_price == Decimal.new("456.7")
      assert branch.short_desc == "some updated short_desc"
    end

    test "update_branch/2 with invalid data returns error changeset" do
      branch = branch_fixture()
      assert {:error, %Ecto.Changeset{}} = Branches.update_branch(branch, @invalid_attrs)
      assert branch == Branches.get_branch!(branch.id)
    end

    test "delete_branch/1 deletes the branch" do
      branch = branch_fixture()
      assert {:ok, %Branch{}} = Branches.delete_branch(branch)
      assert_raise Ecto.NoResultsError, fn -> Branches.get_branch!(branch.id) end
    end

    test "change_branch/1 returns a branch changeset" do
      branch = branch_fixture()
      assert %Ecto.Changeset{} = Branches.change_branch(branch)
    end
  end
end
