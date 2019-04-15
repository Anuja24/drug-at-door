class Order < ApplicationRecord
  belongs_to :order_status
  belongs_to :user
  belongs_to :address
  has_many :order_items
  before_create :set_order_status
  before_create :set_order_number
  before_save :update_subtotal
  
  def secure_token
    DateTime.now.strftime("%Y%m%d").to_s + SecureRandom.hex(16/4).upcase
  end

  def set_order_number
    order_number = nil
    loop do
     self.order_number = secure_token
     break unless Order.exists?(order_number: order_number)
  end
  end

  def price_after_discount
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end

  def subtotal
  	order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.item_price) : 0 }.sum
  end
   
  def shipping_charges
  	if subtotal <= 300
  	  self.shipping_charges = 50.00
  	end
  end

  def final_payment
  	if subtotal <= 300
      self.final_payment = price_after_discount  + shipping_charges
  	else
      self.final_payment = price_after_discount
  	end
  end

  def total_discount
    if subtotal <= 300
     subtotal - price_after_discount
    else
     subtotal - final_payment
    end
  end


private
  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
  	self[:total_discount] = total_discount
    self[:subtotal] = subtotal
    self[:shipping_charges] = shipping_charges
    self[:final_payment] = final_payment
  end
end
