class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :type
      t.integer :price_bottle
      t.integer :price_coupe
      t.string :origin
      t.text :description

      t.timestamps
    end
  end
end
