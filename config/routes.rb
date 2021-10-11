Rails.application.routes.draw do
  resources :products
  get 'static_pages/index'
  get 'products/:id/show_partial', to: 'products#show_partial', as: :product_partial
  get 'products/:id/show_gem', to: 'products#show_gem', as: :product_gem

  root to: 'static_pages#index'
end
