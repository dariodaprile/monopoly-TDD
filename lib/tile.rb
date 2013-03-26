class Tile
  def initialize (name, buyable)
    @name = name
    @buyable = buyable
  end

  attr_accessor :name

  def buyable?
    @buyable
  end

end