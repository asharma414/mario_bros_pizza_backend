class Ingredient < ApplicationRecord
    has_many :pizza_ingredients
    has_many :pizzas, through: :pizza_ingredients
    @@categories = ['meat', 'veggie', 'cheese', 'sauce']

    def self.categories
        @@categories
    end

    def self.prices
       {"meat" => 0.95, "veggie" => 0.50, "sauce" => 0.75, "cheese" => 0.65}  
           
    end
end
