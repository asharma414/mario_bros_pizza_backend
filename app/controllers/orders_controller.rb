class OrdersController < ApplicationController

    def create
        ingreds = params[:ingredients].map {|id| Ingredient.find(id)}
        pizza = Pizza.find_or_create_by(size: params[:size], bake: params[:bake], cut: params[:cut], ingredients: ingreds)
        render json: Order.create(customer_id: params[:customer_id], pizza_id: pizza.id, delivery_instructions: params[:delivery_instructions])
    end

end
