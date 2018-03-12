Rails.application.routes.draw do
  resources :contracts
  resources :payment_modes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
