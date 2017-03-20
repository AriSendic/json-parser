Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'texts#index'
  get '/texts' => 'texts#index'
  post '/texts' => 'texts#create'
  get '/texts/:id' => 'texts#show'
end
