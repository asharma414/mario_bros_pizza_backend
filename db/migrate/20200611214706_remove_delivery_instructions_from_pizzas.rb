class RemoveDeliveryInstructionsFromPizzas < ActiveRecord::Migration[6.0]
  def change
    remove_column :pizzas, :delivery_instructions, :text
  end
end
