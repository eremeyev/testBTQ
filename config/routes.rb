ActionController::Routing::Routes.draw do |map|
  map.connect '', :controller => 'clients', :action => 'information'
  map.connect ':action', :controller => 'clients'
end
