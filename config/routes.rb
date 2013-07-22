Rmemory::Application.routes.draw do

    root :to => 'games#index'
    post "learn/:game_id" => "games#learn", :as => "learn_kanji"

    get "logout" => "Sessions#destroy", :as => "logout"
    get "login" => "Sessions#new", :as => "login"
    get "signup" => "users#new", :as => "signup"
    resources :users
    resources :sessions

end
