defmodule BeerMe.Repo.Migrations.CreateBeer do
  use Ecto.Migration

  def change do
    create table(:beers) do
      add :name, :string
      add :description, :string
      add :abv, :float

      timestamps
    end

  end
end
