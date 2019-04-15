class ApplicationController < ActionController::Base
  # protect_from_forgery with: :null_session
  helper_method :current_order
  
  def store_location
    if(request.path != "/users/sign_in" &&
      request.path != "/users/sign_up" &&
      request.path != "/users/password/new" &&
      request.path != "/users/password/edit" &&
      request.path != "/users/confirmation" &&
      request.path != "/users/sign_out" &&
      !request.xhr? && !current_user) # don't store ajax calls
      session[:previous_url] = '/cart'
    end
  end

  def after_sign_in_path_for(user)
    if !current_user.nil?
      if current_user.role == "Customer"
        p "dsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
        p previous_path = session[:previous_url]
       session[:previous_url] = nil
         previous_path || customer_dashboards_path
      elsif current_user.role == "Admin"
        previous_path = session[:previous_url]
       session[:previous_url] = nil
        previous_path || admin_dashboards_path
        # admin_dashboards_path
      else current_user.role == "SuperAdmin"
        previous_path = session[:previous_url]
       session[:previous_url] = nil
         previous_path || superadmin_dashboards_path
      end
    else
      root_path
    end
  end
  
  def current_order
    if !current_user.nil?
      if !Order.find_by_user_id_and_order_status_id(current_user.id,1).nil?
        Order.find_by_user_id_and_order_status_id(current_user.id,1)
       else
        Order.new
       end
    elsif !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
end
