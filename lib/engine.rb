# require "player"
require "tile"
require "land"

class Engine
end


board = []


for i in (1..9)
  board << "#{i} street"
end


board = board.map { |land| land = Land.new((land.initial * 10),(land.initial * 100),land,land.initial)  }


class String
  def initial
    self[0,1].to_i
  end
end
