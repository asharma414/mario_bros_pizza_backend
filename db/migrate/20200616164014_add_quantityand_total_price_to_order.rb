class AddQuantityandTotalPriceToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :quantity, :integer
    add_column :orders, :total_price, :decimal
  end
end
