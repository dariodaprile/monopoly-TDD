class Tile
  attr_reader :name, :buyable, :position
  def initialize (name, buyable, position)
    @name, @buyable, @position = name, buyable, position
  end

  # def buyable?
  #   @buyable
  # end
end