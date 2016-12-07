Rails.application.routes.draw do

#   Prefix Verb  URI Pattern              Controller#Action
#     cats GET   /cats(.:format)          cats#index
#          POST  /cats(.:format)          cats#create
#  new_cat GET   /cats/new(.:format)      cats#new
# edit_cat GET   /cats/:id/edit(.:format) cats#edit
#      cat GET   /cats/:id(.:format)      cats#show
#          PATCH /cats/:id(.:format)      cats#update
#          PUT   /cats/:id(.:format)      cats#update

# cat_rental_requests GET   /cat_rental_requests(.:format)          cat_rental_requests#index
#                         POST  /cat_rental_requests(.:format)          cat_rental_requests#create
#  new_cat_rental_request GET   /cat_rental_requests/new(.:format)      cat_rental_requests#new
# edit_cat_rental_request GET   /cat_rental_requests/:id/edit(.:format) cat_rental_requests#edit
#      cat_rental_request GET   /cat_rental_requests/:id(.:format)      cat_rental_requests#show
#                         PATCH /cat_rental_requests/:id(.:format)      cat_rental_requests#update
#                         PUT   /cat_rental_requests/:id(.:format)      cat_rental_requests#update


  resources :cats, only: [:index, :show, :new, :create, :edit, :update]

  resources :cat_rental_requests, only: [:index, :show, :new, :create, :edit, :update]
end
