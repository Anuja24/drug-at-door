class OrderItemsController < ApplicationController
  def update
    @orders = current_order
    @order_item = @orders.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @orders.order_items
  end

  def destroy
    @orders = current_order
    @order_item = @orders.order_items.find(params[:id])
    if @orders.order_items.size == 0
      @order_item.destroy
      @@orders.destroy
    else
     @order_item.destroy
    end
    @order_items = @orders.order_items
  end

  private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
