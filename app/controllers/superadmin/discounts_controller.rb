class Superadmin::DiscountsController < ApplicationController
	def index
	@discounts = Discount.all
	end

	def new
		
	end

	def create
  	@discount = Discount.new(new_discount_param)
  	if @discount.save
  	 redirect_to superadmin_discounts_path
  	else
  	 render 'new'
  	end
  end

  def edit
  	@discount = Discount.find(params[:id])
  end

  def update
  	@discount = Discount.find(params[:id])
  	if @discount.update(new_discount_param)
  	 redirect_to superadmin_discounts_path
  	else
  	 render 'edit'
  	end
  end

  def destroy
  	@discount = Discount.find(params[:id])
  	@discount.destroy
  	redirect_to superadmin_discounts_path
  end

  private 

  def new_discount_param
  	params.require(:discount).permit!
  end
end
