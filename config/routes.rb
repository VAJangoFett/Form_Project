Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create]
  get '/team', to: 'users#team'
  get '/contact', to: 'users#contact'
  post '/new', to: 'users#create'
end
