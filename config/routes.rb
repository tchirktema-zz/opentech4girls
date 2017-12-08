Rails.application.routes.draw do
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  mount RailsAdmin::Engine => '/gesier', as: 'rails_admin'
  root "registers#index"

  resources :registers, only:[:index,:new,:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
