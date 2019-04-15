class Superadmin::CompositionsController < ApplicationController
	def index
		@compositions = Composition.all
	end

	def new
		
	end

	def create
	  @composition = Composition.new(new_composition_param)
	  if @composition.save
        redirect_to superadmin_compositions_path
      else
      	render 'new'
      end
	end
    
    def edit 
     @composition = Composition.find(params[:id])
    end


	def update
	  @composition = Composition.find(params[:id])
	  if @composition.update(new_composition_param)
        redirect_to superadmin_compositions_path
      else
      	render 'edit'
      end
	end

	def destroy
	 @composition = Composition.find(params[:id])
	 @composition.destroy
	 redirect_to superadmin_compositions_path
	end

	private 

  def new_composition_param
  	params.require(:composition).permit!
  end
end
