Rails.application.routes.draw do

  namespace :api do
    get "/name" => "params#name"
  end

   namespace :api do
    get "/guess/:number_guess" => "params#guess"
  end

end
