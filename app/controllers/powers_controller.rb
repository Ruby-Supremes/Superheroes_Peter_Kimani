class PowersController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :power_not_found
rescue_from ActiveRecord::RecordInvalid, with: :validation_error

    def index
        powers = Power.all
        render json: powers
    end

    def show
        power = Power.find(params[:id])
        render json: power
    end

    def update
        power = find_power
        power.update!(power_params)
        render json: power
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
    def find_power
        Power.find(params[:id])
    end
    
end
