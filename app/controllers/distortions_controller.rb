class DistortionsController < ApplicationController
    def index
        render json: Distortion.all
    end
end
