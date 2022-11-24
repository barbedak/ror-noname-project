Rails.application.routes.draw do
  get '/jobtitle', to: 'jobtitle#index', as: 'jobtitles'
  
  resources :jobtitle, only: %i[new create destroy]

  get '/typeequipments', to: 'typeequipment#index', as: 'typeequipments'
  post '/typeequipments', to: 'typeequipment#create', as: '/typeequipment_index'
  
  resources :typeequipment, only: %i[new destroy]
  resources :employees
end
