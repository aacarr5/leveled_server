class RoundsController < ApplicationController

	def create
		puts params
		respond_to do |format|
			format.html {render :show}
			format.json do round = Round.create!(round_params)
							user = User.find(round.user_id)
							user.add_points(round.points)
							render json: {"response" => round.points}
						end
					end
	end

	private
	def round_params
		params.require(:round).permit(:intended_time,:completed_time,:user_id)
	end
		
end