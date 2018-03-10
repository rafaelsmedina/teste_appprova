Rails.application.routes.draw do
  get 'listing/index'
  get 'listing/institution/:id' => 'listing#institution', as: 'listing_institution'
  get 'listing/course/:id' => 'listing#course', as: 'listing_course'
  get 'listing/institution_grade/:id' => 'listing#institution_grade', as: 'listing_institution_grade'
  get 'listing/course_grade/:id' => 'listing#course_grade', as: 'listing_course_grade'
  get 'listing/average_grade/:id' => 'listing#average_grade', as: 'listing_average_grade'

  resources :students
  resources :courses
  resources :institutions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'listing#index'
end
