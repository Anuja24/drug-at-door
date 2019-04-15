class CartsController < ApplicationController
	# before_action :store_location,:authenticate_user!

  def show
  	@orders = current_order
  	@order_item = current_order.order_items
  end
end
