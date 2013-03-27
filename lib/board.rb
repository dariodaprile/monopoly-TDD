class Board

  def initialize
    @land = create_land
  end

  def land_at(position)
    @land[position]
  end

  private

  def create_land

# loop 40 times and for each value i
# create a new tile with name '#{i} street'
# and value i *100 and rent i *10
# and postition i
# return an array of tiles

    Array.new(40) do |i|
      Land.new i *10 , i * 100, "#{i} street", i
    end
  end
end
