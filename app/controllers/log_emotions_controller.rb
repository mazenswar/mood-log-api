class LogEmotionsController < ApplicationController
    def index
        render json: LogEmotion.all
    end
end
