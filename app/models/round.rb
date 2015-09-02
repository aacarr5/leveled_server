class Round < ActiveRecord::Base
	belongs_to :user

	def points
		base_points = self.completed_time / self.intended_time
		base_points += 10 if base_points == 1
		base_points += 10 #bc we're fun like that
		base_points
	end

	


end