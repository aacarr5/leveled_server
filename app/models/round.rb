class Round < ActiveRecord::Base
	belongs_to :user

	def points
		@points ||= pointCreator
	end


	private
		def pointCreator
			base_points = self.completed_time / self.inteded_time
			base_points += 10 if base_points == 1
		end
end