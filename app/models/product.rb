class Product < ApplicationRecord
  belongs_to :supplier
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :images
  has_many :orders
  has_many :carted_products
  has_many :users, through: :carted_products

  def is_discounted?
    if price <= 10
      return true
    else
      return false
    end
  end

  def tax
    tax = price * 0.09
    return tax
  end

  def total
    total = price + tax
  end
end

# validates :name, presence: true
# validates :name, uniqueness: true
# validates :price, presence: true
# validates :price, numerically: { greater_than: 0 }
# validates :description, presence: true
# validates :description, length: { minimun: 10, maximun: 100 }
# validates :quantity, numerically: { greater_than: 0 }
# validates :quantity, numerically: true
