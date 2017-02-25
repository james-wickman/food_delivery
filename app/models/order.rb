class Order < ApplicationRecord
  belongs_to :user
  belongs_to :driver, optional: true
  has_many :order_ingredients, dependent: :destroy
  has_many :ingredients, :through => :order_ingredients
  def self.get_next_available_job
	  where(available: true).first
	end
end
