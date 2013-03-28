require "./player"
require "./tile"
require "./land"
require "./dice"
require "./board"
require "./move"
require "./choose"

class Engine

  def initialize
    @player1 = Player.new("Sam")
    @board = Board.new
    # @land1 = Land.new(100, 1000, "Mayfair", 10)
    puts @player1.name



  # def turn(player1)
  # end
  # roll_dice
  # move_player
  #dice = Dice.new
  # test_tile_availability?
  # not to test: if player.position == tile.position

  if (@board.land_at(@player1.position)).available
    puts "Would you like to buy #{@board.land_at(@player1.position).name}"
    responce = gets.chomp.downcase
    if responce == "yes"
      @player1.buy_land(@board.land_at(@player1.position))
      puts "You now own:"
      @player1.land_list
    else
      puts "you did not buy the land"
    end
  else
     puts "pay_rent"
  end
end

  # def roll_dice
  # end
end

engine = Engine.new
engine

