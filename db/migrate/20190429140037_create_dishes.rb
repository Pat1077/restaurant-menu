class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :price
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
