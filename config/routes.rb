Rails.application.routes.draw do
  resources :projects do
  	resources :tasks 
  end
  devise_for :users
  get '/priority_task', to: 'tasks#priority_task'
  get '/task_done', to: 'tasks#task_done'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
