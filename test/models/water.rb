class Flow < ActiveRecord::Base
   
   # define self
   def self.find_by_ticker(stationID:symbol)
    where(stationID: ticker_symbol).first

    def self.new_from_lookup(stationID_symbol)
      looked_up_flow = Stock.Quote::Stock.quote(ticker_symbol)
      return nil unless looked_up_flow.name
      
      new_flow = new(stationID: looked_up_flow.symbol, name: looked_up_flow.name)
      new_flow.waterlevel = new_flow.waterlevel
      
    end

# If closing price is not nil, return this
def metres
  closing_price = StockQuote::Stock.quote(stationID).close
  return "#{closing_price} (Closing)" if closing_price

# If opening price is not nil, return this, otherwise return opening_price, otherwise if neither of these two work, return unanvailable
  opening_price = StockQuote::Stock.quote(stationID).open
  return "#{opening_price} (Opening)" if opening_price
  #otherise
  "unavailable"
end



  end
