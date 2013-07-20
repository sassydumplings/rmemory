Rmemory::Application.routes.draw do

    root :to => 'games#index'

    get "logout" => "Sessions#destroy", :as => "logout"
    get "login" => "Sessions#new", :as => "login"
    get "signup" => "users#new", :as => "signup"
    resources :users
    resources :sessions
    get "secret" => "home#secret", :as => "secret"

end
