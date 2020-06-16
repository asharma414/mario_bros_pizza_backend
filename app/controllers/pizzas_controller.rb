class PizzasController < ApplicationController

    def index
        # notice that this is the three pizzas
       render json: Pizza.all[0..2].to_json(except: [:created_at, :updated_at], 
        include: {ingredients: {except: [:created_at, :updated_at]}})
    end

    def create
    end

end
