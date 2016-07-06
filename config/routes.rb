Rails.application.routes.draw do

  root 'pages#index'
  
  devise_for :users
  
#resources :pages #only: [:home, :contactUs, :aboutUs, :privacyPolicy, :termsAndCoditions, :disclaimer, :sitemap] do
  get 'pages/index', path: "/index" #to: 'pages#home'
  get 'pages/contactUs', path: '/contact-us'  #to: 'pages#contactUs' as: 'contact-us'
  get 'pages/aboutUs', path: '/about-us' #to: 'pages#aboutUs' as: 'about-us'
  get 'pages/privacyPolicy', path: '/privacy-policy' #to: 'pages#privacyPolicy' as: 'pages#privacyPolicy'
  get 'pages/termsAndConditions', path: '/terms-and-conditions' #to: 'pages#termsAndCoditions' as: 'terms-and-conditions'
  get 'pages/disclaimer', path: '/disclaimer' #to: 'pages#disclaimer' as: 'disclaimer'
  get 'pages/sitemap', path: '/sitemap'  #to: 'pages#sitemap' as: '/sitemap'
#end

  
  resources :subscribers, only: [:new, :create]

  resources :posts, path: "", only: [:index, :new, :create]
  resources :posts, path: "", except: [:index, :new, :create]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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
