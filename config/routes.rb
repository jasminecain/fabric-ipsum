Rails.application.routes.draw do
  post '/generate' => 'ipsum#generate'

  root 'ipsum#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
