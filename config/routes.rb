Rails.application.routes.draw do
  namespace :admins_backoffice do
    get 'admins/index'
  end

  namespace :users_backoffice do
    get 'users/index'
  end

  #protect links for users
  namespace :users_backoffice do
    get 'welcome/index'
  end
  devise_for :users

  #protect links for admins
  namespace :admins_backoffice do
    get 'welcome/index'
    resources :courses
    resources :schedules
    resources :student
  end
  devise_for :admins

  get 'inicio', to: 'welcome#index'

  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
