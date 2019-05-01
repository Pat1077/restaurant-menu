class ChangeTypeOnPrice < ActiveRecord::Migration[5.2]
  def change
    change_column :dishes, :price, :float
  end
end
