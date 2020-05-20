Rails.application.routes.draw do
  devise_for :users
  namespace :users_backoffice do
    get 'welcome/index'
    end

  namespace :admins_backoffice do
    get 'welcome/index'
    resources :courses
    resources :schedules
    resources :students
  end
  devise_for :admins

  get 'inicio', to: 'welcome#index'

  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
