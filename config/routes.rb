Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Routes for the Topic resource:
  # CREATE
  get "/topics/new", :controller => "topics", :action => "new"
  post "/create_topic", :controller => "topics", :action => "create"

  # READ
  get "/topics", :controller => "topics", :action => "index"
  get "/topics/:id", :controller => "topics", :action => "show"

  # UPDATE
  get "/topics/:id/edit", :controller => "topics", :action => "edit"
  post "/update_topic/:id", :controller => "topics", :action => "update"

  # DELETE
  get "/delete_topic/:id", :controller => "topics", :action => "destroy"
  #------------------------------

  # Routes for the Journal resource:
  # CREATE
  get "/journals/new", :controller => "journals", :action => "new"
  post "/create_journal", :controller => "journals", :action => "create"

  # READ
  get "/journals", :controller => "journals", :action => "index"
  get "/journals/:id", :controller => "journals", :action => "show"

  # UPDATE
  get "/journals/:id/edit", :controller => "journals", :action => "edit"
  post "/update_journal/:id", :controller => "journals", :action => "update"

  # DELETE
  get "/delete_journal/:id", :controller => "journals", :action => "destroy"
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
