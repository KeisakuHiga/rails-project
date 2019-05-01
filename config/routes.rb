Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"

  get "welcome/index"

  get "/listings", to: "listings#index", as: "listings"
  post "/listings", to: "listings#create"
  get "/listings/new", to: "listings#new", as: "new_listing"
  get "/listings/:id", to: "listings#show", as: "listing"
  put "/listings/:id", to: "listings#update"
  patch "/listings/:id/edit", to: "listings#update"
  delete "/listings/:id", to: "listing#destroy"
  get "/listings/:id/edit", to: "listings#edit", as: "edit_listing"

  

end
