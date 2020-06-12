class Customer < ApplicationRecord
    has_many :orders
    has_many :pizzas, through: :orders

end
