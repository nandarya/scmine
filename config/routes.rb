ActionController::Routing::Routes.draw do |map|
  map.resources :replays

  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  
  map.resources :user_sessions
  map.resources :articles
  map.resources :users

  map.root :controller => 'articles'
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
