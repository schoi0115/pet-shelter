class SheltersController < ApplicationController
    def index
        shelter = Shelter.all
        render json: shelter
    end
end
