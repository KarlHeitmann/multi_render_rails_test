Rails.application.routes.draw do
  resources :products
  get 'static_pages/index'
  get 'products/:id/show_new', to: 'products#show_new', as: :product_new

  root to: 'static_pages#index'
end
