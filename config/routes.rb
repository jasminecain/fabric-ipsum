Rails.application.routes.draw do
  resources :homes, only: [:show]
  # root to: "homes#show"
  # get 'homes/show'

  post '/generate' => 'ipsum#generate'

  root 'ipsum#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
