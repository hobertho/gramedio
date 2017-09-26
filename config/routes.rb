Rails.application.routes.draw do
  # HOME
  get '/' => "home#index", as: :home

  # register
  get '/register' => 'user#index', as: :user
  post '/register/new' => 'user#new', as: :user
end
