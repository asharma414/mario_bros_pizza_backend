class OrdersController < ApplicationController

    # def create
    #     ingreds = params[:ingredients].map {|id| Ingredient.find(id)}.sort_by {|ing| ing.name }
    #     similarPizzas = Pizza.all.select {|pizza| pizza.ingredients.sort_by {|ing| ing.name } == ingreds}
    #     if similarPizzas.empty?
    #         pizza = Pizza.create(size: params[:size], bake: params[:bake], cut: params[:cut])
    #         pizza.ingredients = ingreds
    #         render json: Order.create(customer_id: params[:customer_id], pizza_id: pizza.id, delivery_instructions: params[:delivery_instructions])
    #     else
    #         similarCuts = similarPizzas.select {|pizza| pizza.size == params[:size] && pizza.bake == params[:bake] && pizza.cut == params[:cut]}
    #         if similarCuts.empty?
    #             pizza = Pizza.create(size: params[:size], bake: params[:bake], cut: params[:cut])
    #             pizza.ingredients = ingreds
    #             render json: Order.create(customer_id: params[:customer_id], pizza_id: pizza.id, delivery_instructions: params[:delivery_instructions])
    #         else
    #             render json: Order.create(customer_id: params[:customer_id], pizza_id: similarCuts[0], delivery_instructions: params[:delivery_instructions])
    #         end
    #     end
    # end

    # AR won't save us now
    # Pizza.where(cut, bake, sie #=> AR collection prozy (array-like))
    # x = Pizza.where(c,b,s).select {|p| p.ingredients == paramIngredients} 
    # x.empty? then create pizza
    # 

    def create
        paramIngredients = params[:ingredients].map {|id| Ingredient.find(id)}
        paramIngredients.sort_by! {|ing| ing.id}
        # pizza = Pizza.find_or_create_by(size: params[:size], bake: params[:bake], cut: params[:cut], ingredients: paramIngredients)
        # render json: Order.create(customer_id: params[:customer_id], pizza_id: pizza.id, delivery_instructions: params[:delivery_instructions])
        pies = Pizza.where(cut: params[:cut], size: params[:size], bake: params[:bake])
        next_pies = pies.select {|p| p.ingredients.to_set == paramIngredients.to_set}
        if next_pies.empty?
            p = Pizza.create(size: params[:size], bake: params[:bake], cut: params[:cut], ingredients: paramIngredients)
        else
            p = next_pies[0]
        end
        render json: Order.create(customer_id: params[:customer_id], pizza_id: p.id, delivery_instructions: params[:delivery_instructions])
    end
end
