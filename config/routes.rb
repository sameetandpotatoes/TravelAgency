TravelAgency::Application.routes.draw do
  root 'pages#home'
  get '/', to: 'pages#home', as: 'home'
  get '/travels/hawaii', to: 'travels#hawaii', as: 'hawaii'
  get '/travels/italy', to: 'travels#italy', as: 'italy'
  get '/travels/china', to: 'travels#china', as: 'china'
  get '/travels/lucky', to: 'travels#random', as: 'random'
  get '/about', to: 'pages#about', as: 'about'
  get '/contact', to: 'pages#contact', as: 'contact'
  post '/contact', to: 'pages#create', as: 'send'
  post '/favorites' => 'favorites#create'
end
