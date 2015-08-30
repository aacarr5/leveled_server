class RoundsController < ApplicationController

	def create
		Round.create!(round_params)
	end

	private
	def round_params
		params.require(:round).permit(:intended_time,:completed_time)
	end
		
end