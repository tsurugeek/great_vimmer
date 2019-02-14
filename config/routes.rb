Rails.application.routes.draw do
  get 'questions/show'
  get 'questions/answer'
  get 'grades/show'
  get 'grades/summary'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#show'

  namespace :admin do
    resources :grades do
      resources :questions
    end
  end

  resources :grades, only: [:show] do
    member do
      get :summary
      post :start
    end
    resources :questions, only: [:show] do
      member do
        post :answer
      end
    end
  end
end
