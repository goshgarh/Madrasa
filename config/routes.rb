Rails.application.routes.draw do
  
  

  devise_for :admins, controllers: {
        sessions: 'admins/sessions',
        registrations: 'admins/registrations'
      }

    
  devise_for :pupils, controllers: {
        sessions: 'pupils/sessions',
        registrations: 'pupils/registrations'
      }
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    root 'homes#index'
    resources :students
    resources :instructors
    resources :groups
    
end
