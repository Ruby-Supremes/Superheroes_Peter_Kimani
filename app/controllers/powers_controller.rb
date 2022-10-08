class PowersController < ApplicationController
    def index
        powers = Power.all
        render json: powers
    end
    def show
        @power = Power.find(params[:id])
        render json: @power
    end
    def update
        if @power.update(power_params)
          render json: @power
        else
          render json: @power.errors, status: :unprocessable_entity
        end
    end
    private
    def power_params
        params.permit(:description)
    end

    
end
