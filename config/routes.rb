Rails.application.routes.draw do
  resources :employees
  resources :job_titles
  resources :equipment
  resources :equipment_types
  resources :checklists
  resources :brews
  resources :products
  resources :series
end
