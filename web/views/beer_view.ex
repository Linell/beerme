defmodule BeerMe.V1.BeerView do
  use BeerMe.Web, :view

  def render("index.json", %{beers: beers}) do
    %{data: render_many(beers, BeerMe.V1.BeerView, "beer.json")}
  end

  def render("show.json", %{beer: beer}) do
    %{data: render_one(beer, BeerMe.V1.BeerView, "beer.json")}
  end

  def render("beer.json", %{beer: beer}) do
    %{id: beer.id,
      name: beer.name,
      description: beer.description,
      abv: beer.abv}
  end
end
