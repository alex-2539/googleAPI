class DestinationsController < ApplicationController


def create
  Destination.create(params[:destination])
  @origins = Destination.last.origins
  @destinations = Destination.last.destinations
  url = "https://maps.googleapis.com/maps/api/distancematrix/json"
  destination = Typhoeus.get(url,
    :params => { :origins => @origins, :destinations => @destinations, :sensor => "false"}
    )

  @destination = JSON.parse(destination.body)
end

def index
  @destinations = Destination.all
end


end
