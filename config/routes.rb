Rails.application.routes.draw do
resources :themes do
  get 'answer'
  post 'mail'
end
resources :questions
resources :reponses
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
