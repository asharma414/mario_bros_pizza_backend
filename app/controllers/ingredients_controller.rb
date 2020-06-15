class IngredientsController < ApplicationController

    def index
        render json: Ingredient.all
    end

    def prices
        render json: [Ingredient.prices, Pizza.size_prices]
    end
end
