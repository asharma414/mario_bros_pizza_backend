class Pizza < ApplicationRecord
    has_many :orders
    has_many :customers, through: :orders
    has_many :pizza_ingredients
    has_many :ingredients, through: :pizza_ingredients
    @@sizes = ['small', 'medium', 'large']
    @@cuts = ['normal', 'square']
    @@bakes = ['normal', 'well done']
end
