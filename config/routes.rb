Rails.application.routes.draw do
  #resources :gossips
  get 'gossips/index'
  get 'gossips/show/:gossip_id', to: 'gossips#show'
  get 'gossips/show/:gossip_id/:user_id', to: 'gossips#author'
  get 'gossips/new'
  get 'gossips/create'
  get 'gossips/edit'
  get 'gossips/update'
  get 'gossips/delete'
  get 'gossips/destroy'
  root 'gossips#index'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  get '/welcome/:first_name', to: 'welcome#show'
end 
  


