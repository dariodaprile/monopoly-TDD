class Tile
  attr_accessor :name
  attr_accessor :position
  def initialize (name, buyable, position)
    @name = name
    @buyable = buyable
    @position = position
  end

  def buyable?
    @buyable
  end

end