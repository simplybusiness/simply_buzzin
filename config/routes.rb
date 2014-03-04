SimplyBuzzin::Application.routes.draw do

  root :to => 'messages#new'

  post "messages/create"

end
