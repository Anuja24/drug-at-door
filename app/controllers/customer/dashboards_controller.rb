class Customer::DashboardsController < ApplicationController
  def index
  end

  def success
  	@order = Order.find(params[:id])
  end
  
  def order_details
  	@order = Order.find(params[:id])
  end

  def orders_history
  	@orders = Order.where(user_id: current_user.id, order_status_id:2)
  end
end
