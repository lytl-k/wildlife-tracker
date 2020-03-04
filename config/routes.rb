Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'dashboard#index'
  get '/login',                     to: 'login#index'
  post '/login',                    to: 'login#create'
  post '/logout',                   to: 'home#logout'
  get '/sign_up',                   to: 'users#new'
  post '/sign_up',                  to: 'users#create'
  get '/home',                      to: 'home#index'
  get '/home/filtered',             to: 'home#filtered'

  get '/animal_types',              to: 'animal_types#index'
  get '/animal_types/new',          to: 'animal_types#new'
  post '/animal_types/new',         to: 'animal_types#create'
  get '/animal_types/:id/edit',     to: 'animal_types#edit'
  patch '/animal_types/:id/edit',   to: 'animal_types#update'
  delete '/animal_types/:id',       to: 'animal_types#delete'

  get '/animals',                   to: 'animals#index'
  get '/animals/new',               to: 'animals#new'
  post '/animals/new',              to: 'animals#create'
  get '/animals/:id/edit',          to: 'animals#edit'
  patch '/animals/:id/edit',        to: 'animals#update'
  delete '/animals/:id',            to: 'animals#delete'

  get '/regions',                   to: 'regions#index'
  get '/regions/new',               to: 'regions#new'
  post '/regions/new',              to: 'regions#create'
  get '/regions/:id/edit',          to: 'regions#edit'
  patch '/regions/:id/edit',        to: 'regions#update'
  delete '/regions/:id',            to: 'regions#delete'

  get '/sightings/new',             to: 'sightings#new'
  post '/sightings/new',            to: 'sightings#create'
  get '/sightings/:id/edit',        to: 'sightings#edit'
  patch '/sightings/:id/edit',      to: 'sightings#update'
  delete '/sightings/:id',          to: 'sightings#delete'
end
