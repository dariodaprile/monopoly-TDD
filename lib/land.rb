class Land < Tile
	def initialize(rent, value, name)
		@rent=rent
    @value=value
    super
	end
	def calculate_rent
		@rent
	end
  def value
    @value
  end


end