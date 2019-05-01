class Dish < ApplicationRecord
  validates :name, presence: true
  validates :kind_dish, presence:true
end
