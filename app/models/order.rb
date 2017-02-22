class Order < ApplicationRecord
  belongs_to :user
  belongs_to :driver, optional: true
  has_many :order_ingredients
  has_many :ingredients, :through => :order_ingredients
end
