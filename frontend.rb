require "unirest"
require "pp"

while true
  puts "Welcome to the Crypto App"
  puts
  puts "Please enter the Crypto symbol you want to view"
  puts "Or enter q to quit"
  search_symbol = gets.chomp
  if search_symbol == "q"
    break
  end
  response = Unirest.get("http://localhost:3000/cryptos?search_symbol=#{search_symbol}")
  crypto_currency = response.body
  pp crypto_currency
end
