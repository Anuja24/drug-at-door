class UsersController < ApplicationController
  def customer_sign_up
  	@user = User.new
  end

 
end
