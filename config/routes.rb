Rails.application.routes.draw do
  
  get 'carts/index'

  namespace :superadmin do
    resources :dashboards
    resources :companies do
    collection do
       get :new_company
       post :create_new_company
       get :edit_compnay_name
       patch :update_company_name
       delete :delete_company
    end
   end
   resources :discounts 
   resources :compositions
   resources :product_forms
   resources :products do
    collection do
       
    end
   end
  end
    

  namespace :customer do
   resources :dashboards do 
    collection do
      get :product_search
      get :order_details
      get :success
      get :orders_history
    end
   end
    resources :products do
    collection do
       get :product_section
       get :product_section_type
       get :product_details
       post :add_to_cart
       get :product_search
    end
  end
end

resources :check_outs do
 collection do
  get :address
  post :create_address
  get :pay
 end
end
 
  namespace :admin do 
    get 'dashboards/index'
  end
  
  resource :cart
  resources :order_items, only: [:create, :update, :destroy]

   root 'home#index'
   devise_for :users,:controllers => { :registrations => "registrations"}
   resources :users do
    collection do
       get :customer_sign_up
    end
  end
  
 post '/payu_callback'=>'check_outs#payu_return'
   
end
   
