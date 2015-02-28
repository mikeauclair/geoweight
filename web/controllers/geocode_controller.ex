defmodule Geoweight.Api.GeocodeController do
  use Phoenix.Controller

  plug :action

  def show(conn, _params) do
    render conn, :show, response: "{location: 'bloop'}"
  end
end
