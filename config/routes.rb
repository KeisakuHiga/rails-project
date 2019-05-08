Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
   }
   
   devise_scope :user do
     get 'my_page', to: 'users/registrations#my_page'
   end
  
  get "/users/show", to: "devise/sessions#show", as: "user_profile"


  root "welcome#index"
  get "welcome/index"
  get "welcome/about", to: "welcome#about"

  # Listing has many offers
  resources :listings do
    resources :offers do
      # Stripe
      resources :charges
    end
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
  # delete "/listings", to: "listings#destroy"

  # offers
  # get "/offers", to: "offers#index", as: "offers"
  # post "/listings/:id", to: "offers#create"
  # get "/offers", to: "offers#new", as: "new_offer"
  # get "/offers/:id", to: "offers#show", as: "offer"
  # put "/offers/:id", to: "offers#update"
  # delete "/offers/:id", to: "offers#destroy", as: "delete_offer"
  # get "/offers/:id/edit", to: "offers#edit", as: "edit_offer"
  patch "/listings/:id/offers/:id/edit", to: "offers#update"
  get "/welcome/your", to: "welcome#your", as: "your_listing"
  get "/welcome/offers", to: "welcome#offers", as: "your_offers"
  
end
