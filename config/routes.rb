Rails.application.routes.draw do
  root 'home#index'

  get '/auth/github', to: 'sessions#create', as: 'github_login'
  get '/auth/github/callback', :to => 'sessions#create'
  # get '/auth/github/callback', to: 'sessions#create', as: "github_login"
  delete '/logout', to:'sessions#destroy'

end
