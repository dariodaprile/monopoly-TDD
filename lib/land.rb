class Land < Tile
  # def value
  #   @value
  # end
  attr_reader :value, :rent, :available

  def initialize(rent, value, name, position)
    @rent=rent
    @value=value
    @available = true
    super(name, true, position)
  end

  def available?(status)
    @available = status
  end

end
