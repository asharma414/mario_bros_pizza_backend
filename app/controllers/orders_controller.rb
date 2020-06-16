class OrdersController < ApplicationController

    def index
        # byebug
        open_orders = Order.where(customer_id: params[:id], status: true)
        render json: open_orders.to_json(except: [:created_at, :updated_at], include: {pizza: {include: {ingredients: {except: [:created_at, :updated_at]}}, except: [:created_at, :updated_at]}})
    end

    def create
        paramIngredients = params[:ingredients].map {|id| Ingredient.find(id)}
        paramIngredients.sort_by! {|ing| ing.id}
        proper_sized_pies = Pizza.where(cut: params[:cut], size: params[:size], bake: params[:bake])
        next_pies = proper_sized_pies.select {|p| p.ingredients.to_set == paramIngredients.to_set}
        if next_pies.empty?
            pizza = Pizza.create(size: params[:size], bake: params[:bake], cut: params[:cut], ingredients: paramIngredients)
            pizza.price = pizza.calculate_price
            pizza.save
        else
            pizza = next_pies[0]
        end
        
        total = pizza.price * params[:quantity]
        order = Order.create(customer_id: params[:customer_id], pizza_id: pizza.id, delivery_instructions: params[:delivery_instructions], quantity: params[:quantity], total_price: total, status: true)
        render json: order
    end

    def checkout
        ordArr = []
        params[:order].each do |id|
            ord = Order.find(id)
            ord.status = false
            ord.save
            ordArr.push(ord)
        end
        render json: ordArr
    end
end
