class ChangeTypeOnDish < ActiveRecord::Migration[5.2]
  def change
    rename_column :dishes, :type, :kind_dish
  end
end
