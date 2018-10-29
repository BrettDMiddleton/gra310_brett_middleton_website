class LocationsController < ApplicationController
  def index
    @locations = Location.where.not(latitude: nil, longitude: nil)

    @markers = @locations.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end
end
