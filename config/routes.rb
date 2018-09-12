Rails.application.routes.draw do
resources :themes do
  collection do
    get 'answer'
    post 'mail'
  end
end
resources :questions
resources :reponses
  root to: 'themes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


