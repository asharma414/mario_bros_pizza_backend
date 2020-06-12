class AddPictureToPizzas < ActiveRecord::Migration[6.0]
  def change
    add_column :pizzas, :pic, :string
  end
end
