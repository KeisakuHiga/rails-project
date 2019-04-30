Rails.application.routes.draw do
  get '/listings', to: 'listings#index', as: 'listings'
  post "/listings", to: "listings#create"
  get "/new", to: "listings#new", as: "new_listings"
  get "/listings/:id", to: "listings#show", as: "listing"
  root 'welcome#index'

end
