class CheckOutsController < ApplicationController
	before_action :store_location,:authenticate_user!

	def index
	  @orders = current_order
  	  @order_item = current_order.order_items
  	  @address = Address.new
     @user = current_user
     @addresses = Address.where(user_id:@user.id)
	end

	def show
		@orders = current_order
  	  @order_item = current_order.order_items
  	  @address = Address.new
     @user = current_user
     @addresses = Address.where(user_id:@user.id)
	end

	def address
     @address = Address.new
     @user = current_user
     @addresses = Address.where(user_id:@user.id)
	end

	def new
	  @user = current_user
	end

	def create_address
	  @address = Address.new(address_params)
      @address.save
      redirect_to check_outs_path
	end

	def pay
	   @address = Address.find(params[:default_address])
	    @orders = current_order
      @orders.update(address_id:@address.id)
  	  @order_item = current_order.order_items
	end

	def payu_return
    notification = PayuIndia::Notification.new(request.query_string, options = {:key => 'gtKFFx', :salt => 'eCwWELxi', :params => params})
    @order = Order.find_by_order_number(notification.invoice) # notification.invoice is order id/cart id which you have submited from payment direction page.
    if notification.acknowledge      
      begin
        if notification.complete?          
          @order.order_status_id = 2
          @order.purchased_at = Time.now
          @order.update(purchased_at:Time.now,card_holder_name:params['name_on_card'], order_number:notification.invoice)
          # reset_session
          redirect_to(success_customer_dashboards_path(id:@order))
        else     
          render :text => "Order Failed! #{notification.message}"
        end
      ensure
       
      end
    end    
  end

	private
    def address_params
      params.require(:address).permit(:full_address,:land_mark,:pincode,:mobile_no,:city,:state,:user_id,:customer_id,:address_type_id
      	)
	end
end
