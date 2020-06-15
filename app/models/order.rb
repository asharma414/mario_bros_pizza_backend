class Order < ApplicationRecord
    belongs_to :customer
    belongs_to :pizza
    # accepts_nested_attributes_for :pizza
end
