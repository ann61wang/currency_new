namespace :dev do
  task :fetch_currency => :environment do
    puts "Fetch currency data..."
    response = RestClient.get "http://web.juhe.cn:8080/finance/exchange/rmbquot", :params => { :key => "5739d74f2c58d4296ca190da25f220dc" }
    data = JSON.parse(response.body)

  data["result"][0]["data19"]

  Currency.create!( :fBuyPri=> data["result"][0]["data19"]["fBuyPri"],
                    :mBuyPri=> data["result"][0]["data19"]["mBuyPri"],
                    :currency_data=> data["result"][0]["data19"]["date"],
                    :currency_name=> data["result"][0]["data19"]["name"],
                    :fSellPri=> data["result"][0]["data19"]["fSellPri"],
                    :mSellPri=> data["result"][0]["data19"]["mSellPri"]
                     )

   data["result"][0]["data20"]

   Currency.create!( :fBuyPri=> data["result"][0]["data20"]["fBuyPri"],
                     :mBuyPri=> data["result"][0]["data20"]["mBuyPri"],
                     :currency_data=> data["result"][0]["data20"]["date"],
                     :currency_name=> data["result"][0]["data20"]["name"],
                     :fSellPri=> data["result"][0]["data20"]["fSellPri"],
                     :mSellPri=> data["result"][0]["data20"]["mSellPri"]
                      )

  data["result"][0]["data21"]

  Currency.create!( :fBuyPri=> data["result"][0]["data21"]["fBuyPri"],
                    :mBuyPri=> data["result"][0]["data21"]["mBuyPri"],
                    :currency_data=> data["result"][0]["data21"]["date"],
                    :currency_name=> data["result"][0]["data21"]["name"],
                    :fSellPri=> data["result"][0]["data21"]["fSellPri"],
                    :mSellPri=> data["result"][0]["data21"]["mSellPri"]
                     )


    puts "Total: #{Currency.count} currencies"
  end
end
