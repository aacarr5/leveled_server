class User < ActiveRecord::Base
	has_many :rounds

	def add_points(int)
		self.update(xp:self.xp+=int)
	end


end