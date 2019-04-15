class Superadmin::CompaniesController < ApplicationController
  def index
  	@companies = Company.all
    # @company = Company.order(:company_name).where("company_name like ?", "#{params[:term]}%")
    #     render json: @company.map(&:company_name)
  end

  def new_company
  	
  end

  def create_new_company
  	@company = Company.new(new_company_param)
  	if @company.save
  	 redirect_to superadmin_companies_path
  	else
  	 render 'new_company'
  	end
  end

  def edit_compnay_name
  	@company = Company.find(params[:id])
  end

  def update_company_name
  	@company = Company.find(params[:id])
  	if @company.update(new_company_param)
  		redirect_to superadmin_companies_path
  	else
  		render 'edit_compnay_name'
  	end
  end

  def delete_company
  	@company = Company.find(params[:id])
  	@company.destroy
    redirect_to superadmin_companies_path
  end

  private 

  def new_company_param
  	params.require(:company).permit!
  end
end
