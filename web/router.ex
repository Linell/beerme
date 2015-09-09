defmodule BeerMe.Router do
  use BeerMe.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BeerMe do
    pipe_through :api

    scope "/v1", V1, as: :v1 do
      resources "/beers", BeerController
    end
  end

end
