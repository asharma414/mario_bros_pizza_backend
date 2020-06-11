class Order < ApplicationRecord
    belongs_to :customer
    belongs_to :pizza
end
