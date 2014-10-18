TravelAgency::Application.routes.draw do
  root 'pages#home'
  get '/travels/hawaii', to: 'travels#hawaii', as: 'hawaii'
  get '/about', to: 'pages#about', as: 'about'
end
