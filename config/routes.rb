Rails.application.routes.draw do
  root to: 'mainpage#index'
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
  resources :mainpage
end
