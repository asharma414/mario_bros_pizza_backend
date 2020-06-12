class CustomersController < ApplicationController

    def create
        render json: Customer.create(name: params[:name], username: params[:username], address: params[:address]).to_json(except: [:created_at, :updated_at])
    end

    def update
    end

    def show
    end

end
