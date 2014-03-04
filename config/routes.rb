SimplyBuzzin::Application.routes.draw do

  root :to => 'messages#index'

  get "messages/index"

  get "messages/new"

  post "messages/create"

end
