class Round < ActiveRecord::Base
	belongs_to :user

	def points
		base_points = (self.intended_time - self.completed_time / 60).to_i
		base_points += 10 if self.intended_time == self.completed_time
		base_points
	end

	


end