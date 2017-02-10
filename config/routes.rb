Rails.application.routes.draw do
  get '/' => 'menu#index', as: :index
  get '/new' => 'menu#new'
  post '/create' => 'menu#create'
end
