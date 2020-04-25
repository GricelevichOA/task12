class SubjectPolicy < ApplicationPolicy

	def index?
		user.role.can_read? if user
	end

	def show?
		user.role.can_read? if user
	end

	def create?
		user.role.can_create? if user
	end

	def new?
		user.role.can_create? if user
	end

	def update?
		user.role.can_update? if user
	end

	def edit?
		user.role.can_update? if user
	end

	def destroy?
		user.role.can_delete? if user
	end


	class Scope < Scope
		def resolve
			scope.all
		end
	end
end
