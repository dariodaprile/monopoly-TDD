class Player
	def initialize(balance, name)
		@balance=balance
		@land=[]
	end
	def pay_rent(rent)
		if @balance < rent
			@balance = 0
		else
			@balance = @balance - rent
		end
	end
	def balance
		@balance
	end
	def buy_land(land, value)
		if @balance >= value
			@balance = @balance - value
			@land << land
		end
	end
	def owns_land?(land)
		@land.include? land
		# @land="Mayfair"
	end
end