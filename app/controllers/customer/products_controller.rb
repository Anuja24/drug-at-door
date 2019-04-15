class Customer::ProductsController < ApplicationController
	
    def product_section
     @section = Section.find(params[:id])
     @section_type = SectionType.find(@section.section_type_id)
     @sections = Section.where(section_type_id: @section_type.id)
     @products = Product.where(section_id:@section.id)
     @companies_p = Product.where(section_type_id: @section_type.id)
     @order_item = current_order.order_items.new
     add_breadcrumb "Home", root_path
     add_breadcrumb @section_type.section_type_name, product_section_customer_products_path 
     # add_breadcrumb "Product Section", product_section_customer_products_path
	end

    def product_section_type
     @section_type = SectionType.find(params[:id])
     @section = Section.where(section_type_id: @section_type.id)
     @products = Product.where(section_type_id:@section_type.id)
     @companies = @products.pluck(:company_id)
     @order_item = current_order.order_items.new
    end
   
    def product_search
     @products = search_product(params[:section_id],params[:product_search][:section_id],params[:product_search][:section_type_id],params[:company_id],params[:discount_id],params[:maxrange],params[:minrange])
     @companies = @products.pluck(:company_id)
     @order_item = current_order.order_items.new
    end

	def product_details
      @product = Product.find(params[:id])
      @products = Product.where(section_id: @product.section_id)	
      @order_item = current_order.order_items.new
	end

	def add_to_cart
     @order = current_order
     @order_item = @order.order_items.new(order_item_params)
     @order.user_id = current_user.id unless current_user.nil?
     @order.save
     session[:order_id] = @order.id
	end
    
    def search_product(sections,section_id,section_type_id,companies,discounts_arr,maxrange,minrange)
        if !discounts_arr.nil?
           dis_pro = []
            discounts_arr.each do |discount|
              Discount.all.each do |dis|
                if discount == "20% and Above"
                   if dis.discount_name.to_i >= "20".to_i
                     dis_pro << dis.id
                   end
                elsif discount == "10% and above"
                  if dis.discount_name.to_i >= "10".to_i
                     dis_pro << dis.id
                  end
                else
                  if dis.discount_name.to_i < "10".to_i
                     dis_pro << dis.id
                   end
                end
               end
             end
        end

        if (!maxrange.empty? && !minrange.empty?)
         @product_price_arr = []
         @pro = Product.all
         @pro.each do |product|
         if minrange.to_i <= product.discount_price.to_i && maxrange.to_i >= product.discount_price.to_i
            @product_price_arr << product.id
          end
        end
        end

        if !sections.nil? && companies.nil? && discounts_arr.nil? && (maxrange.empty? && minrange.empty?)
            Product.where(section_id:sections)
        
        elsif !companies.nil? && sections.nil? && discounts_arr.nil? && (maxrange.empty? && minrange.empty?)
            Product.where(company_id:companies,section_type_id:section_type_id) 
        
        elsif !discounts_arr.nil? && sections.nil? && companies.nil? && (maxrange.empty? && minrange.empty?)
            Product.where(discount_id:dis_pro,section_type_id:section_type_id)
        
        elsif sections.nil? && companies.nil? && discounts_arr.nil? && (!maxrange.empty? && !minrange.empty?)
          Product.where(section_type_id:section_type_id,id:@product_price_arr)
        
        elsif !sections.nil? && !companies.nil? && discounts_arr.nil? && (maxrange.empty? && minrange.empty?)
            Product.where(section_id:sections,company_id:companies)
        
        elsif !sections.nil? && companies.nil? && !discounts_arr.nil? && (maxrange.empty? && minrange.empty?)
            Product.where(section_id:sections,discount_id:dis_pro)
        
        elsif !sections.nil? && companies.nil? && discounts_arr.nil? && (!maxrange.empty? && !minrange.empty?)
          Product.where(section_id:sections,id:@product_price_arr)
        
        elsif sections.nil? && !companies.nil? && !discounts_arr.nil? && (maxrange.empty? && minrange.empty?)
           Product.where(company_id:companies,discount_id:dis_pro,section_type_id:section_type_id)
        
        elsif sections.nil? && !companies.nil? && discounts_arr.nil? && (!maxrange.empty? && !minrange.empty?)
          Product.where(section_type_id:section_type_id,company_id:companies,id:@product_price_arr) 
        
        elsif sections.nil? && companies.nil? && !discounts_arr.nil? && (!maxrange.empty? && !minrange.empty?)
          Product.where(section_type_id:section_type_id,discount_id:dis_pro,id:@product_price_arr)
        
        elsif !sections.nil? && !companies.nil? && !discounts_arr.nil? && (maxrange.empty? && minrange.empty?)
            Product.where(section_id:sections,company_id:companies,discount_id:dis_pro)
        
        elsif !sections.nil? && !companies.nil? && discounts_arr.nil? && (!maxrange.empty? && !minrange.empty?)
           Product.where(section_id:sections,company_id:companies,id:@product_price_arr)

        elsif !sections.nil? && companies.nil? && !discounts_arr.nil? && (!maxrange.empty? && !minrange.empty?)
           Product.where(section_id:sections,discount_id:dis_pro,id:@product_price_arr)
        
        elsif sections.nil? && !companies.nil? && !discounts_arr.nil? && (!maxrange.empty? && !minrange.empty?)
          Product.where(section_type_id:section_type_id,discount_id:dis_pro,id:@product_price_arr,company_id:companies)

        elsif !sections.nil? && !companies.nil? && !discounts_arr.nil? && (!maxrange.empty? && !minrange.empty?)
           Product.where(section_id:sections,company_id:companies,discount_id:dis_pro,id:@product_price_arr)
        else
          if section_id.nil?
            Product.where(section_type_id:section_type_id)
          else
            @section_type_id = Section.find(section_id).section_type_id
            Product.where(section_type_id:@section_type_id)
          end
        end
    end

    private
    def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
    end
end
