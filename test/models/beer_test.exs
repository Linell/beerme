defmodule BeerMe.BeerTest do
  use BeerMe.ModelCase

  alias BeerMe.Beer

  @valid_attrs %{abv: "120.5", description: "Tastes like actual ass.", name: "Busch Beer"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Beer.changeset(%Beer{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Beer.changeset(%Beer{}, @invalid_attrs)
    refute changeset.valid?
  end
end
