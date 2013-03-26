class Player
	attr_accessor :position
	attr_reader :name, :balance
	def initialize(balance, name)
		@name = name
		@balance=balance
		@land=[]
		@position = 0
	end
	def pay_rent(rent)
		if @balance < rent
			@balance = 0
		else
			# @balance = @balance - rent
			@balance -= rent
		end
	end
	def buy_land(land, value)
		if @balance >= value
			@balance = @balance - value
			@land << land
		end
	end
	def owns_land?(land)
		@land.include? land
	end

	def get_rent(rent)
		@balance += rent
	end

end