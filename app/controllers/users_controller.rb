class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
	before_action :authorize_user, except: [:index]

	def index
		@users = User.all
		authorize @users
	end

	def show
	end

	def edit
	end

	def update
		if @user.update(user_params)
			redirect_to @user, notice: 'User was successfully updated.'
		else
			render :edit
		end
	end

	def destroy
		@user.destroy
		redirect_to users_url, notice: 'User was successfully destroyed.'
	end

	private

	def authorize_user
		authorize @user
	end

	def set_user
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:username, :email, :role_id)
	end
end
