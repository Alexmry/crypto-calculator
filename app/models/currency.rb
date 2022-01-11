class Currency < ApplicationRecord
    def request(type, url, opts = {})
        request = HTTParty.send(type, url, opts)
    end

    def current_price
        # url = 'https://api.coinmarketcap.com/v1/ticker/'
        # url = 'https://api.coinbase.com/v2/prices/btc-usd/spot'
        # url = 'https://api.coingeko.com/api/v3/coins/bitcoin'

        # request = HTTParty.get(url + self.slug)
        # response = JSON.parse(request.body)
    end
end
