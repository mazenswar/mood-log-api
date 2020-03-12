class StaticDataController < ApplicationController

    def index
        mappedEmotions = Emotion.all.map {|emotion| EmotionSerializer.new(emotion).as_json}
        render json: {emotions: mappedEmotions, distortions: Distortion.all}
    end
end
