class Land < Tile
  def initialize(rent, value, name, position )
    @rent=rent
    @value=value
    @available = true
    super(name, true, position)
  end

  def calculate_rent
    @rent
  end

  def value
    @value
  end

  def available?(status)
    @available = status
  end

end


