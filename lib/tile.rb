class Tile
  attr_reader :name, :buyable, :position
  def initialize (name, buyable, position)
    @name = name
    @buyable = buyable
    @position = position
  end

  # def buyable?
  #   @buyable
  # end
end