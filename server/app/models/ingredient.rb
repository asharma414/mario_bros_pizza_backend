class Ingredient < ApplicationRecord
    has_many :pizza_ingredients
    has_many :pizzas, through: :pizza_ingredients
    @@categories = ['meat', 'veggies', 'cheese', 'sauce']
end