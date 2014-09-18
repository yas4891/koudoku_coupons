KoudokuCoupons::Engine.routes.draw do
  
  resources :promotions
  
  get ":id" => 'promotions#show', :as => :default_route, :defaults => {id: ''}
end
