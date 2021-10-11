Rails.application.routes.draw do
  resources :products
  get 'static_pages/index'
  get 'products/:id/show_new', to: 'products#show_new', as: :product_new
  get 'products/:id/show_new_gem', to: 'products#show_new_gem', as: :product_new_gem

  root to: 'static_pages#index'
end
