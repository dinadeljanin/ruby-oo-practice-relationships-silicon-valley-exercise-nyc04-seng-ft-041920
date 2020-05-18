class FundingRound
  attr_reader :startup, :venture_capitalist
  attr_accessor :type, :investment

  @@all = []

  def initialize(startup, venture_capitalist, type, investment)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type = type
    @investment = investment.to_f
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
