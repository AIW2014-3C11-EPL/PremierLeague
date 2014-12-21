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
  get 'home/new4', to: 'home#new4', as: 'home_new4'
  get 'home/new5', to: 'home#new5', as: 'home_new5'
  get 'home/new6', to: 'home#new6', as: 'home_new6'
  get 'home/new7', to: 'home#new7', as: 'home_new7'
  get 'home/new8', to: 'home#new8', as: 'home_new8'
  get 'home/new9', to: 'home#new9', as: 'home_new9'
  get 'home/new10', to: 'home#new10', as: 'home_new10'
  get 'home/new11', to: 'home#new11', as: 'home_new11'
  get 'home/single/:id', to: 'home#single', as: 'home_single'
  get 'home/player/:id', to: 'home#player', as: 'home_player'
  get 'home/detail/:id', to: 'home#detail', as: 'home_detail'
  get 'home/old', to: 'home#old', as: 'home_old'
  get 'home/emi', to: 'home#emi', as: 'home_emi'
  get 'home/an', to: 'home#an', as: 'home_an'
  get 'home/stam', to: 'home#stam', as: 'home_stam'
  get 'home/eti', to: 'home#eti', as: 'home_eti'

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
