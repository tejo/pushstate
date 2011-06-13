require 'singleton'
class Market
  include Singleton
  

  def initialize
    @avalilable_markets = [:europe, :japan]
    @ecommerce_markets = [:europe]
    @default_market = :europe
  end
  def cane
    @avalilable_markets
  end
end

