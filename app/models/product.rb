class Product < ApplicationRecord
  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :price, presence: true
  # validates :price, numerically: { greater_than: 0 }
  # validates :description, presence: true
  # validates :description, length: { minimun: 10, maximun: 100 }
  # validates :quantity, numerically: { greater_than: 0 }
  # validates :quantity, numerically: true

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
