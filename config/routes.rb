Rails.application.routes.draw do
  root "registers#index"

  resources :registers, only:[:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
