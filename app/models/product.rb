class Product < ApplicationRecord

 monetize :price_pennies

  validates :name, presence: true
  validates :sku, presence: true
  validates :price, presence: true

end
