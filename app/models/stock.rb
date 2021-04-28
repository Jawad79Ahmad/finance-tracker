class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
                                publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
                                secret_token: 'Tsk_731fb6880d3c4fe985402c1eca9abc08',
                                endpoint: 'https://sandbox.iexapis.com/v1'
                              )
    client.price(ticker_symbol)
  end
end
