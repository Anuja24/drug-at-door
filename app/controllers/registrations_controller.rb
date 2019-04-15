class RegistrationsController < Devise::RegistrationsController
 

 def create
 	@user = User.new(user_params)
 	if @user.save
 		if Customer.create(first_name:@user.first_name,last_name:@user.last_name,email_id:@user.email,mobile_no:@user.mobile_number,user_id: @user.id)
 	     redirect_to root_path
 	    end
 	else
 	   render 'users/customer_sign_up'
 	end
 end


 private
  def user_params
      params.require(:user).permit(:first_name,:last_name,:email,
                                 :password,:mobile_number,:role
    )
	end
end
