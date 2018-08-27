Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'sessions#index'

resources :sessions
resources :students
resources :teachers
resources :cohorts
resources :courses
resources :admins

end

