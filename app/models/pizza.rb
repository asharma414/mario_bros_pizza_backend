class Pizza < ApplicationRecord
    has_many :orders
    has_many :customers, through: :orders
    has_many :pizza_ingredients
    has_many :ingredients, through: :pizza_ingredients
    @@sizes = ['small', 'medium', 'large']
    @@cuts = ['normal', 'square']
    @@bakes = ['normal', 'well done']

    

    def calculate_price
        
        ingredient_array = self.ingredients.to_a
        ingredient_array.map!(&:category)

        total = Pizza.size_prices[self.size]
        
        total += ingredient_array.map {|ing| Ingredient.prices[ing]}.sum
        return total
    end

    def self.size_prices
        {'small' => 7.00, 'medium' => 9.00, 'large' => 12.00 }
    end

end
