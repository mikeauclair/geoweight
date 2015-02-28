defmodule Geoweight.Api.GeocodeView do
  use Geoweight.View

  def render("show.json", %{response: response}) do
    response
  end
end
