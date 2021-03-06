class UsersController < ApplicationController
	def create
		respond_to do |format|
			format.html {render :show}
			format.json do  
				user = User.create!(user_params)
				puts user.id
				render json: {"user" => user.id} 
			end 
		end
	end

	def new
		@user = User.new
		puts ("Hello")
	end


	def show
		@user = User.find(params[:id])

		info = [@user.username,@user.level,@user.xp]

  		respond_to do |format|
  			format.html {render :show}
  			format.json {render json: info }
  		end
	end

	private
		def user_params
			params.require(:user).permit(:username,:password)
		end
end