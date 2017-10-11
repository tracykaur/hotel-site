Rails.application.routes.draw do
  root 'pages#home'

  # get '/rooms'
  get '/home', {to: 'pages#home', as: 'home'}
  get '/rooms', {to: 'pages#rooms', as: 'rooms'}
  get '/contact', {to: 'pages#contact', as: 'contact'}
  get '/about', {to: 'pages#about', as: 'about'}

  post '/create', to: "pages#create"



  # get '/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
