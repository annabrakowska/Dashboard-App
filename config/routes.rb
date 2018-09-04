Rails.application.routes.draw do

  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  devise_scope :admin do
    authenticated :admin do

      root 'admins#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end


resources :students
resources :teachers
resources :cohorts
resources :courses
resources :admins

end






