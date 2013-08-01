Rmemory::Application.routes.draw do

    root :to => 'games#index'
    get  "/games/learned" => "games#learned"


    get "logout" => "Sessions#destroy", :as => "logout"
    get "login" => "Sessions#new", :as => "login"
    get "signup" => "users#new", :as => "signup"
    resources :users
    resources :sessions

end
