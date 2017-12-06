Rails.application.routes.draw do

  get "/cryptos" => "cryptos#search"
  
end
