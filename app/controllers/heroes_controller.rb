class HeroesController < ApplicationController
    def index
        heroes = Hero.all
        render json: heroes, include: ['id','name','super_name']
    end
    def show
        hero = Hero.find(params[:id])
        render json: hero
    end
end
