TravelAgency::Application.routes.draw do
  root 'pages#home'
  get '/', to: 'pages#home', as: 'home'
  get '/travels/hawaii', to: 'travels#hawaii', as: 'hawaii'
  get '/about', to: 'pages#about', as: 'about'
  get '/contact', to: 'pages#contact', as: 'contact'
  post '/contact', to: 'pages#create', as: 'send'
end
