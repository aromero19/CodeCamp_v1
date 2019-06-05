Rails.application.routes.draw do
  resources :assessments
  resources :reviewanswers
  resources :reviews
  resources :answers
  resources :questions
  resources :check_answers
  resources :checks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
