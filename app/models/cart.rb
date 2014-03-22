class Cart 

	attr_reader :items
	attr_reader :total_price

	def initialize
		@items = []
		@total_price = 0.0
	end

	def add_album(album)		
		@items << LineItem.new_based_on(album)
		@total_price += album.price
	end

end
