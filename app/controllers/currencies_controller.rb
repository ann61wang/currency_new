class CurrenciesController < ApplicationController

  def index
    @currencies = Currency.all
  end

#   def new
#   	@currency = Currency.new
#   end
#
#   def create
#   	@currency = Currency.new(currency_params)
#   	redirect_to currencies_path
#   end
#
#   def show
#   	@currency = Currency.find(params[:id])
#   end
#
  # def update_date
  # 	currency = Currency.find(params[:id])
  #
  # 	response = RestClient.get "http://web.juhe.cn:8080/finance/exchange/rmbquot", :params => { :key => "5739d74f2c58d4296ca190da25f220dc" }
  #   data = JSON.parse(response.body)
  #
  #   currency.update( :currency_id => data["result"][0]["data1"]["date"] )
  #
  #   redirect_to :back
  # end
  #
  # private
  #
  # def currency_params
  # 	params.require(:currency).permit(:currency_id, :currency_name)
  # end
 end
