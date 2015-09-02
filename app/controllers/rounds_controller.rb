class RoundsController < ApplicationController

	def create
		respond_to do |format|
			format.html {render :show}
			format.json do round = Round.create!(round_params)
						   render json: {"user" => round.points}
						end
					end
	end

	private
	def round_params
		params.require(:round).permit(:intended_time,:completed_time,:user_id)
	end
		
end