class UsersController < ApplicationController
	def create
		puts params
		# User.create!(user_params)
	end

	def new
		@user = User.new
		puts ("Hello")
	end

	def show
		@user = User.first
		respond_to do |format|
			format.html { render :show }
			format.json { render json: @user }
        end
	end

	private
		def user_params
			params.require(:user).permit(:username,:password)
		end
end