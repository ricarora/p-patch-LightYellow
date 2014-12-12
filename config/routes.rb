require 'resque/server'
Rails.application.routes.draw do
  mount Resque::Server, :at => '/resque'
  # Sessions Routes
  get "/auth/:provider/callback",  to: "sessions#create",    as: :login
  post "/auth/:provider/callback", to: "sessions#create"
  delete "/logout",      to: "sessions#destroy",            as: :logout

  get "/login", to: "users#signin", as: :signin

  # Home Route
  get '/', to: 'home#index', as: :root
  # Weather route
  get 'weather', to: 'home#weather', as: :weather

  # Comment Routes
  get 'comments',         to: 'comments#index',   as: :comments
  get 'comments/new',     to: 'comments#new',     as: :new_comment
  post 'comments',        to: 'comments#create'
  get 'comment/:id',      to: 'comments#show',    as: :comment
  patch 'comment/:id',    to: 'comments#update'
  delete 'comment/:id',   to: 'comments#destroy'
  get 'comment/:id/edit', to: 'comments#edit',    as: :edit_comment

  # User Routes
  get 'users',          to: 'users#index',      as: :users
  get 'users/new',      to: 'users#new',        as: :new_user
  post 'users',         to: 'users#create'
  get 'user/:id',       to: 'users#show',       as: :user
  patch 'user/:id',     to: 'users#update'
  delete 'user/:id',    to: 'users#destroy'
  get 'user/:id/edit',  to: 'users#edit',       as: :edit_user

  # Blogpost Routes
  get 'blogposts',          to: 'blogposts#index',    as: :blogposts
  get 'blogposts/new',      to: 'blogposts#new',      as: :new_blogpost
  post 'blogposts',         to: 'blogposts#create'
  get 'blogpost/:id',       to: 'blogposts#show',     as: :blogpost
  patch 'blogpost/:id',     to: 'blogposts#update'
  delete 'blogpost/:id',    to: 'blogposts#destroy'
  get 'blogpost/:id/edit',  to: 'blogposts#edit',     as: :edit_blogpost

  # Checkout Routes
  get 'checkouts',          to: 'checkouts#index',      as: :checkouts
  get 'checkouts/new',      to: 'checkouts#new',        as: :new_checkout
  post 'checkouts',         to: 'checkouts#create'
  get 'checkout/:id',       to: 'checkouts#show',       as: :checkout
  patch 'checkout/:id',     to: 'checkouts#update'
  delete 'checkout/:id',    to: 'checkouts#destroy'
  get 'checkout/:id/edit',  to: 'checkouts#edit',       as: :edit_checkout

  # Tool Routes
  get 'tools',          to: 'tools#index',      as: :tools
  get 'tools/new',      to: 'tools#new',        as: :new_tool
  post 'tools',         to: 'tools#create'
  get 'tool/:id',       to: 'tools#show',       as: :tool
  patch 'tool/:id',     to: 'tools#update'
  delete 'tool/:id',    to: 'tools#destroy'
  get 'tool/:id/edit',  to: 'tools#edit',       as: :edit_tool

  # Event routes
  get 'events',          to: 'events#index',      as: :events
  get 'events/new',      to: 'events#new',        as: :new_event
  post 'events',         to: 'events#create'
  get 'event/:id',       to: 'events#show',       as: :event
  patch 'event/:id',     to: 'events#update'
  delete 'event/:id',    to: 'events#destroy'
  get 'event/:id/edit',  to: 'events#edit',       as: :edit_event

  get 'calendar',        to: 'events#calendar',      as: :calendar

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
