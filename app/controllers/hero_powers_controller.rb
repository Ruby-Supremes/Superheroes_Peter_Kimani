class HeroPowersController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :validation_error
    def create
        hero_power = HeroPower.create!(hero_powers_params)
        render json: hero_power, status: :created
      end
      private

      def hero_powers_params
        params.permit(:strength, :power_id, :hero_id)
      end
      def validation_error
        render json: { error:  ["validation errors"]}, status: 422
      end
end
