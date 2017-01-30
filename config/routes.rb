Rails.application.routes.draw do

  root 'url#index', as: 'shorten_url'
  post  '/shortener', to: 'url#shorten'

end
