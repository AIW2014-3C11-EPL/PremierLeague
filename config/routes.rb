Rails.application.routes.draw do
  root 'home#index'

  get 'home/index', to: 'home#index', as: 'home_index'
  get 'home/matchday', to: 'home#matchday', as: 'home_matchday'
  get 'home/form', to: 'home#form', as: 'home_form'
  get 'home/leaguetable', to: 'home#leaguetable', as: 'home_leaguetable'
  get 'home/team', to: 'home#team', as: 'home_team'
  get 'home/news', to: 'home#news', as: 'home_news'
  get 'home/new1', to: 'home#new1', as: 'home_new1'
  get 'home/new2', to: 'home#new2', as: 'home_new2'
  get 'home/new3', to: 'home#new3', as: 'home_new3'
  get 'home/single/:id', to: 'home#single', as: 'home_single'
  get 'home/player/:id', to: 'home#player', as: 'home_player'
  get 'home/detail/:id', to: 'home#detail', as: 'home_detail'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

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
