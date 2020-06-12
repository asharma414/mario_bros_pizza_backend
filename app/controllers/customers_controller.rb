class CustomersController < ApplicationController

    def create
        render json: Customer.create(name: params[:name], username: params[:username], address: params[:address]).to_json(except: [:created_at, :updated_at])
    end

    def update
    end

    def show
    end

    def login
        customer = Customer.find_by(username: params[:username])
        if customer
            session[:username] = params[:username]
            render json: customer
        else
            render json:  { error: 'This username is invalid' }
        end
    end

end
