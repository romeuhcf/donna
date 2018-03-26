Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :contracts
  resources :payment_modes
  post '/_wakeup', to: 'wakeup#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
