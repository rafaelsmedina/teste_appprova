Rails.application.routes.draw do
  get 'listing/index'

  resources :students
  resources :courses
  resources :institutions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'listing#index'
end
