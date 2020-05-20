Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'lostpets#index'
  get '/lostpets' => 'lostpets#index', as: 'lostpets'
  get '/lostpets/new' => 'lostpetss#new', as: 'new_lostpet'
  post '/lostpets' => 'lostpets#create'
  get '/lostpets/:id' => 'lostpets#show' , as: 'lostpet'
  get '/lostpets/:id/edit' => 'lostpets#edit', as: 'edit_lostpet'
  patch '/lostpets/:id' => 'lostpets#update'
  delete '/lostpets/:id' => 'lostpets#destroy'

end
