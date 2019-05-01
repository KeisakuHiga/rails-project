Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"

  get "welcome/index"

  get "/listings", to: "listings#index", as: "listings"
  post "/listings", to: "listings#create"
  get "/listings/new", to: "listings#new", as: "new_listing"
  get "/listings/:id", to: "listings#show", as: "listing"
  put "/listings/:id", to: "listings#update"
  post "/listings/:id", to: "listings#destroy"
  delete "/listings/:id", to: "listing#destroy"
  get "/listings/:id/edit", to: "listings#edit", as: "edit_listing"
  patch "/listings/:id/edit", to: "listings#update"

  delete "/listings/:id/offers/:id", to: "offers#destroy", as: "delete_offer"
  
  # resources :users do
  #   resources :listings
  # end
    resources :listings do
      resources :offers
    end
  # end
  
end
