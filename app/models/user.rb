class User < ActiveRecord::Base
	has_many :rounds

	def add_points(int)
		self.xp+=int
	end


	


end