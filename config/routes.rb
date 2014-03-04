SimplyBuzzin::Application.routes.draw do

  root :to => 'messages#new'

  get "messages/index"

  get "messages/new"

  post "messages/create"

end
