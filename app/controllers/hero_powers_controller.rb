class HeroPowersController < ApplicationController
    def create
        hero_power = HeroPowers.create!(hero_powers_params)
        render json: hero_power, status: :created
      end
      private

      def hero_powers_params
        params.permit(:strength, :power_id, :hero_id)
      end
end
