Rails.application.routes.draw do
  root to: 'sessions#new'
  resources :users
  resources :employees
  resources :job_titles
  resources :equipment
  resources :equipment_types
  resources :checklists
  resources :brews
  resources :products
  resources :series
  resource :session, only: %i[new create destroy]
end
