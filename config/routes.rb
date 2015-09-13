Rails.application.routes.draw do

  resources :store_orders
  resources :store_tabs
  resources :lombard_tabs
  resources :stores
  resources :lombards
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  root 'client#index'

  get 'backend' => 'backend#index'
  get 'client' => 'client#index'

  get 'lombard' => 'client#lombard'
  get 'store' => 'client#store'

  get 'lombard_settings' => 'backend#lombard_settings', as: 'l_settings'
  get 'store_settings' => 'backend#store_settings', as: 's_settings'

  namespace :backend do 
    resources :pages
    resources :tabs
    resources :orders
    resources :lombard_orders
    resources :store_orders
    resources :products
  end

  resources :pages
  resources :tabs


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
