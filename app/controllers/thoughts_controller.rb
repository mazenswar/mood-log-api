class ThoughtsController < ApplicationController
    def index
        render json: Thought.all
    end
end
