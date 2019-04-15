class Superadmin::ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def new
	  @product = Product.new
	end

	def create
	  @product = Product.new(new_product_param)
      @compositions = params[:product][:composition_ids].reject { |item| item == '' }
	  if @product.save
        @compositions.each do |composition_id|
          CompositionProduct.create(composition_id:composition_id,product_id:@product.id)
        end
        redirect_to superadmin_products_path
	  else
        render 'new'
	  end
	end
    
    def edit
    	@product = Product.find(params[:id])
    end

    def update
       @product = Product.find(params[:id])
       @old_compositions = CompositionProduct.where(product_id:@product.id).pluck(:id)
       @old_compositions.each do |oc|
         CompositionProduct.destroy(oc)
       end
       @compositions = params[:product][:composition_ids].reject { |item| item == '' }
       if @product.update(new_product_param)
         @compositions.each do |composition_id|
          CompositionProduct.create(composition_id:composition_id,product_id:@product.id)
        end
        redirect_to superadmin_products_path
       else
        render 'edit'
	  end
    end

    def destroy
    	@product = Product.find(params[:id])
    	@old_compositions = CompositionProduct.where(product_id:@product.id).pluck(:id)
        @old_compositions.each do |oc|
         CompositionProduct.destroy(oc)
        end
    	@product.destroy
    	redirect_to superadmin_products_path
    end
	
	private 

    def new_product_param
  	 params.require(:product).permit(:id,:product_form_name,:product_price,
  	 	:product_unit,:product_information,:section_type_id,:section_id,
  	 	:company_id,:product_form_id,:pack_id,:discount_id,:available_id,
  	 	:prec_require_id,:unit_id,:unit_qty,:product_name,:photo,:discount_price)
    end
end
