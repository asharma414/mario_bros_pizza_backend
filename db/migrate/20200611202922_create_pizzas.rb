class CreatePizzas < ActiveRecord::Migration[6.0]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :size
      t.string :cut
      t.string :bake
      t.text :delivery_instructions
      t.decimal :price

      t.timestamps
    end
  end
end
