SimplyBuzzin::Application.routes.draw do

  root :to => 'message#index'

  get "message/index"

  get "message/new"

  get "message/create"

end
