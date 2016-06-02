Rails.application.routes.draw do

  root 'cocktails#index'
  resources :cocktails, only: [:index, :new, :show, :create] do
    resources :doses, only: [:index, :show, :new, :create]
  end
  delete 'doses/:id', to: 'doses#destroy', as: 'dose'
  # as permet de changer le prefixe
#
#   Prefix Verb   URI Pattern                                                     Controller#Action
#      root           GET    /                                                    cocktails#index
# cocktail_doses      GET    /cocktails/:cocktail_id/doses(.:format)              doses#index
#                     POST   /cocktails/:cocktail_id/doses(.:format)              doses#create
# new_cocktail_dose   GET    /cocktails/:cocktail_id/doses/new(.:format)          doses#new
# cocktail_dose       GET    /cocktails/:cocktail_id/doses/:id(.:format)          doses#show
# cocktails           GET    /cocktails(.:format)                                 cocktails#index
#                     POST   /cocktails(.:format)                                 cocktails#create
# new_cocktail        GET    /cocktails/new(.:format)                             cocktails#new
#  cocktail           GET    /cocktails/:id(.:format)                             cocktails#show
#                     DELETE /doses/:id(.:format)                                 doses#destroy


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
