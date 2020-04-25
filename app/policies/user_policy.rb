class UserPolicy < ApplicationPolicy

	def index?
		user.role.is_admin? if user
	end

	def show?
		user.role.is_admin? if user
	end

	def create?
		user.role.is_admin? if user
	end

	def new?
		user.role.is_admin? if user
	end

	def update?
		user.role.is_admin? if user
	end

	def edit?
		user.role.is_admin? if user
	end

	def destroy?
		user.role.is_admin? if user
	end

	class Scope < Scope
		def resolve
			scope.all
		end
	end
end
