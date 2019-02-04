Rails.application.routes.draw do
  
  get '/gossip/:gossip_id/:user_id' ,to: 'author#display'
  get '/gossip/:gossip_id', to: 'gossip#show'
  root 'index#home'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  get '/welcome/:first_name', to: 'welcome#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
