defmodule Geoweight.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
  end

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/", Geoweight do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end
  
  # Other scopes may use custom stacks.
  scope "/api", Geoweight.Api do
    pipe_through :api

    resources "geocode", GeocodeController
  end
end
