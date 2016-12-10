Rails.application.routes.draw do
  devise_for :users
  # get 'welcome/index'

  # creates all the routes for all the different actions that we will be adding to our app
  resources :docs

  # for users logined we want the root to be the list of all the docs
  authenticated :user do
    # root should in the index action in the docs controller we're giving it an alias as: 'authenticated_root' so we dont have 2 roots
    root 'docs#index', as: 'authenticated_root'
  end

  # root for visitors not logged int
  root 'welcome#index'

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
