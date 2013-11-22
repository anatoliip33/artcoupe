Artcoupe::Application.routes.draw do

  namespace :admin do
    
  controller :admin do
        get "login" , :action => :login, :as => :login
        post "login_attempt" , :action => :login_attempt, :as => :login_attempt
        get "logout" , :action => :logout, :as => :logout
  end

  controller :settings do
    get "settings/", :action => :index, :as => :settings
    put "settings/save"
  end

  
  resources :fillings
  resources :stacks
  resources :materials
  resources :cabinets
  resources :feedbacks, :only => [:index, :show, :destroy]
  
  root :to => "cabinets#index"
  
end

controller :error do
  get "error/404", :action => :error404, :as => :error404
end
      
  resources :cabinets, only: [:index]
  resources :fillings, only: [:index]
  resources :materials, only: [:index]
  resources :stacks, only: [:index]
  resources :qualities, only: [:index]
  resources :hardwares, only: [:index]
  resources :faqs, only: [:index]
  resources :contacts, only: [:index]
  
  controller :contacts do
    get '/contacts', :action => :index, :as => :contacts
    post '/contacts/create_feedback', :action => :create_feedback, :as => :create_feedback
  end

  get "store/index"

root :to => 'store#index'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root to: 'store#index', as: 'store'

  match '/*path', :controller => :error, :action => :error404

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
