class RolesController < ApplicationController
	before_action :set_role, only: [:show, :edit, :update, :destroy]

	def index
		@roles = Role.all
		authorize @roles
	end

	def show
		authorize @role
	end

	def new
		@role = Role.new
		authorize @role
	end

	def edit
		authorize @role
	end

	def create
		@role = Role.new(role_params)
		authorize @role
		if @role.save
			redirect_to @role, notice: 'Role was successfully created.'
		else
			render :new
		end
	end

	def update
		if @role.update(role_params)
			redirect_to @role, notice: 'Role was successfully updated.'
		else
			render :edit
		end
	end

	def destroy
		@role.destroy
		redirect_to roles_url, notice: 'Role was successfully destroyed.'
	end

	private 

	def set_role
		@role = Role.find(params[:id])
	end

	def role_params
		params.require(:role).permit(:name, :is_admin, :can_create, :can_read, :can_update, :can_delete)
	end
end
