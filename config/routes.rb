Rails.application.routes.draw do
  
  root 'home#index'
  get 'home/index'
  get '/list' => 'home#list'
  post '/write' => 'home#write'
  get '/write_view' => 'home#write_view'
  get 'destroy/:post_id' => "home#destroy"
  get '/read/:post_id' => 'home#read'
  post 'update/:post_id' => "home#update"
  get 'update_view/:post_id' => "home#update_view"
  post '/home/reply_write' => "home#reply_write"
  
  get '/list2' => 'home#list2'
  post '/write2' => 'home#write2'
  get '/write_view2' => 'home#write_view2'
  get 'destroy2/:post_id' => "home#destroy2"
  get '/read2/:post_id' => 'home#read2'
  post 'update2/:post_id' => "home#update2"
  get 'update_view2/:post_id' => "home#update_view2"
  post '/home/reply_write2' => "home#reply_write2"
  
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
