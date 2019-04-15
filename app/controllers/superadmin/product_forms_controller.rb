class Superadmin::ProductFormsController < ApplicationController
	def index
		@product_form = ProductForm.order(:form_name).where("form_name like ?", "#{params[:term]}%")
        render json: @product_form.map(&:form_name)
	end
end
