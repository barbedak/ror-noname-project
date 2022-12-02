Rails.application.routes.draw do
  resources :products
  resources :series
  get '/jobtitle', to: 'jobtitle#index', as: 'jobtitles'
  
  resources :jobtitle, only: %i[new create destroy]

  get '/typeequipments', to: 'typeequipment#index', as: 'typeequipments'
  post '/typeequipments', to: 'typeequipment#create', as: '/typeequipment_index'
  
  resources :typeequipment, only: %i[new destroy]
  resources :employees, only: %i[new index create destroy]
  
  get '/brew', to: 'brew#index', as: 'brews'
  post '/brew', to: 'brew#create', as: 'brew_index'
  resources :brew

  get '/equipments', to: 'equipment#index', as: 'equipments'
  resources :equipment, only: %i[new index create destroy]

end
