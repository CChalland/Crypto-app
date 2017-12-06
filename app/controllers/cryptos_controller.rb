class CryptosController < ApplicationController

  def search
    search_symbol = params[:search_symbol]
    response = Unirest.get("https://www.alphavantage.co/query?function=DIGITAL_CURRENCY_MONTHLY&symbol=#{search_symbol}&market=CNY&apikey=#{ENV['ALPHA_VANTAGE']}")
    render json: response.body
  end
end
