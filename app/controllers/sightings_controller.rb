class SightingsController < ApplicationController
    
    def show
        @sighting = Sighting.find params[:id] 
        # render json: {id: @sighting.id, bird: @sighting.bird, location: @sighting.location}
        render json: @sighting, include: [:bird, :location]
    end

end
