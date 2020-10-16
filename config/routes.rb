Rails.application.routes.draw do
  namespace :api do
    get "/votes" => "votes#index"
    post "/votes" => "votes#create"
    get "/votes/:id" => "votes#show"
  end
end
