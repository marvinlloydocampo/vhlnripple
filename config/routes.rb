Rails.application.routes.draw do
  resources :issues

  devise_for :users
  get 'home/index'

  get 'home/issue'

  get 'home/report'

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
