Rails.application.routes.draw do
  # get 'welcome/index'
  root 'welcome#index'

  # creates all the routes for all the different actions that we will be adding to our app
  resources :docs


  # rake routes in the command line will give us all the routes in our application
  #   Prefix Verb   URI Pattern              Controller#Action
  #     root GET    /                        welcome#index
  #     docs GET    /docs(.:format)          docs#index
  #          POST   /docs(.:format)          docs#create
  #  new_doc GET    /docs/new(.:format)      docs#new
  # edit_doc GET    /docs/:id/edit(.:format) docs#edit
  #      doc GET    /docs/:id(.:format)      docs#show
  #          PATCH  /docs/:id(.:format)      docs#update
  #          PUT    /docs/:id(.:format)      docs#update
  #          DELETE /docs/:id(.:format)      docs#destroy

end
