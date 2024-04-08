Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "pages#home"
  get '/a-propos/presentation', to: 'a_propos#presentation', as: 'presentation'
  get '/a-propos/cv', to: 'a_propos#cv', as: 'cv'
  get '/a-propos/portfolio', to: 'a_propos#portfolio', as: 'portfolio'
  get '/projets', to: 'projets#index', as: 'projets'
  get '/services', to: 'services#index', as: 'services'
  get '/contacts', to: 'contacts#new', as: 'contacts'
end
