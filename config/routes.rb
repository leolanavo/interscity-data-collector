Rails.application.routes.draw do
  
  resources :events, only: [:show, :index], defaults: {format: :json} do
  	resources :details,
  				defaults: {format: :json},
  				only: [:show, :index]
  end

end
