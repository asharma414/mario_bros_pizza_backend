class PizzasController < ApplicationController

    def index
       render json: Pizza.all[0..2]
    end

    def create
    end

end
