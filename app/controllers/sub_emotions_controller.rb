class SubEmotionsController < ApplicationController
    def index
        render json: SubEmotion.all
    end
end
