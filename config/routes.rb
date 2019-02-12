Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#show'

  namespace :admin do
    resources :grades do
      resources :questions
    end
  end
end
