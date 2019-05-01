Rails.application.routes.draw do
  devise_for :users
  
  root "welcome#index"
  get "welcome/index"
  resources :listings do
    resources :offers
  end

  # # listings
  # get "/listings", to: "listings#index", as: "listings"
  # post "/listings", to: "listings#create"
  # get "/listings/new", to: "listings#new", as: "new_listing"
  # get "/listings/:id", to: "listings#show", as: "listing"
  # put "/listings/:id", to: "listings#update"
  # delete "/listings/:id", to: "listing#destroy", as: "delete_listing"
  # get "/listings/:id/edit", to: "listings#edit", as: "edit_listing"
  patch "/listings/:id/edit", to: "listings#update"

  # offers
  # get "/offers", to: "offers#index", as: "offers"
  # post "/listings/:id", to: "offers#create"
  # get "/offers", to: "offers#new", as: "new_offer"
  # get "/offers/:id", to: "offers#show", as: "offer"
  # put "/offers/:id", to: "offers#update"
  # delete "/offers/:id", to: "offers#destroy", as: "delete_offer"
  # get "/offers/:id/edit", to: "offers#edit", as: "edit_offer"
  patch "/listings/:id/offers/:id/edit", to: "offers#update"

  
end
