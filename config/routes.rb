Rails.application.routes.draw do

  get 'comments/new'

  get 'comments/create'

  get 'comments/update'

  get 'comments/edit'

  get 'comments/destroy'

  get 'comments/index'

  get 'comments/show'

  get 'users/new'

  get 'users/create'

  get 'users/update'

  get 'users/edit'

  get 'users/destroy'

  get 'users/index'

  get 'users/show'

  get 'blogposts/new'

  get 'blogposts/create'

  get 'blogposts/update'

  get 'blogposts/edit'

  get 'blogposts/destroy'

  get 'blogposts/index'

  get 'blogposts/show'

  # Checkout Routes
  get 'checkouts/new'
  get 'checkouts/create'
  get 'checkouts/update'
  get 'checkouts/edit'
  get 'checkouts/destroy'
  get 'checkouts/index'
  get 'checkouts/show'

  # Tool Routes
  get 'tools/new'
  get 'tools/create'
  get 'tools/update'
  get 'tools/edit'
  get 'tools/destroy'
  get 'tools/index'
  get 'tools/show'

  # Event routes
  get 'events/new'
  get 'events/create'
  get 'events/update'
  get 'events/edit'
  get 'events/destroy'
  get 'events/index'
  get 'events/show'


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
