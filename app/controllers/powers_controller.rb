class PowersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :power_not_found
rescue_from ActiveRecord::RecordInvalid, with: :validation_error
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
    def power_not_found
        render json: { error: "Power not found" }, status: 404
    end
    def validation_error
        render json: { error:  ["validation errors"]}, status: 422
    end

    
end
