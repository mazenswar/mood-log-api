class LogsController < ApplicationController

    def show
        render json: Log.find(params[:id])
    end
    def create
        log = Log.createLog(params, active_user)
        render json: log
    end
    
end

