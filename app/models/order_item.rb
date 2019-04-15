class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
  belongs_to :user
  before_save :finalize

  def unit_price
    if persisted?
      self[:unit_price]
    else
      product.discount_price
    end
  end

  def item_price
  	self.item_price = product.product_price
  end
  
  private 
   def finalize
   	self[:item_price] = item_price
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
   end

end
