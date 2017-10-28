Rails.application.routes.draw do
  # HOME
  get '/' => 'home#index', as: :home

  # terms and condition
  get '/terms' => 'home#terms'

  # metode pembayaran
  get '/payment_method' => 'home#payment_method'

  # informasi pengiriman
  get '/shipping_information' => 'home#shipping_information'

  # faq
  get '/faq' => 'home#faq'

  #retur refund
  get '/refund' => 'home#refund'

  # register
  resources :user, path: '/register'
end
