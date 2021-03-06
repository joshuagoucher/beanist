Beanist2::Application.routes.draw do

  resources :jobs 

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :featured_articles do 
    member { post :vote }
  end
   resources :posts
  
 get '/thankyou', to: 'jobs#thankyou'
  match '/signup',  to: 'users#new' 
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', :via => :delete
  match '/about',   to: 'user_pages#contact'


  get "tags/:tag", to: 'featured_articles#index', as: :tag

  get '/a/:tag',    to: 'featured_articles#index'

  get '/s/:id',      to: 'featured_articles#show'

  get '/r/:id', to: 'featured_articles#redirect', as: :redirect

  get '/:id', to: 'user_pages#index'

 

  get 'jobs/category/:category', to: 'jobs#index', as: :category




  root to: 'user_pages#index'
  
 
 


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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
