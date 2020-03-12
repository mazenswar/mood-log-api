class LogSubEmotionsController < ApplicationController
    def index
        render json: LogSubEmotion.all
    end
end
