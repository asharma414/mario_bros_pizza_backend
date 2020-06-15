class OrdersController < ApplicationController

    def create
        ingreds = params[:ingredients].map {|id| Ingredient.find(id)}.sort_by {|ing| ing.name }
        similarPizzas = Pizza.all.select {|pizza| pizza.ingredients.sort_by {|ing| ing.name } == ingreds}
        if similarPizzas.empty?
            pizza = Pizza.create(size: params[:size], bake: params[:bake], cut: params[:cut])
            pizza.ingredients = ingreds
            render json: Order.create(customer_id: params[:customer_id], pizza_id: pizza.id, delivery_instructions: params[:delivery_instructions])
        else
            similarCuts = similarPizzas.select {|pizza| pizza.size == params[:size] && pizza.bake == params[:bake] && pizza.cut == params[:cut]}
            if similarCuts.empty?
                pizza = Pizza.create(size: params[:size], bake: params[:bake], cut: params[:cut])
                pizza.ingredients = ingreds
                render json: Order.create(customer_id: params[:customer_id], pizza_id: pizza.id, delivery_instructions: params[:delivery_instructions])
            else
                render json: Order.create(customer_id: params[:customer_id], pizza_id: similarCuts[0], delivery_instructions: params[:delivery_instructions])
            end
        end
    end

end
