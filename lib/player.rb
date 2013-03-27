class Player
  attr_accessor :position
  attr_reader :name, :balance

  STARTING_BALANCE = 1000

  def initialize(name)
    @name, @balance = name, STARTING_BALANCE
    @land, @position= [], 0
  end

  def pay_rent(rent)
    if can_afford?(rent)
      deduct_balance!(rent)
    else
      @balance = 0
    end
  end

  def buy_land(land)
    if can_afford?(land.value)
      deduct_balance!(land.value)
      @land << land
    end
  end

  def owns_land?(land)
    @land.include? land
  end

  def receive_rent(rent)
    @balance += rent
  end

  private

  def can_afford?(value)
    @balance >= value
  end

  def deduct_balance!(value)
  	@balance -= value
  end
end
