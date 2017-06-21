# namespace :dev do
#   task :fetch_currency => :environment do
#     puts "Fetch currency data..."
#     response = RestClient.get "http://web.juhe.cn:8080/finance/exchange/rmbquot", :params => { :key => "5739d74f2c58d4296ca190da25f220dc" }
#     data = JSON.parse(response.body)

  # data["result"][0]["id"]
  # Currency.create!( :fBuyPri=> data["result"][0]["id"]["fBuyPri"],
  #                   :mBuyPri=> data["result"][0]["id"]["mBuyPri"],
  #                   :currency_data=> data["result"][0]["id"]["date"],
  #                   :currency_name=> data["result"][0]["id"]["name"],
  #                   :fSellPri=> data["result"][0]["id"]["fSellPri"],
  #                   :mSellPri=> data["result"][0]["id"]["mSellPri"]
  #                    )

#   data["result"].each do |c|
#
#     Currency.create!( :currency_id => c["id"])
#   end
#
#     puts "Total: #{Currency.count} currencies"
#   end
# end
