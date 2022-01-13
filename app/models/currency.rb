class Currency < ApplicationRecord

    def calculate_value(amount)
        (current_price * amount.to_f).round(4)
    end

    def current_price
        # url = 'https://api.coinmarketcap.com/v1/ticker/'
        # url = 'https://api.coinbase.com/v2/prices/btc-usd/spot'
        # url = 'https://api.coingeko.com/api/v3/coins/bitcoin'
        # url = "https://api.coincap.io/v2/assets/bitcoin"
        # url = "https://api.coincap.io/v2/assets/"
        url = "https://api.coingecko.com/api/v3/coins/"

        request = HTTParty.get(url + self.slug)
        # response = JSON.parse(request.body).dig('data', 'priceUsd').to_f
        response = JSON.parse(request.body).dig('tickers').first.dig('last').to_f
    end
end
