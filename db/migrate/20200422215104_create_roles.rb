class CreateRoles < ActiveRecord::Migration[5.2]
	def change
		create_table :roles do |t|
			t.boolean :can_create, default: false
			t.boolean :can_read, default: false
			t.boolean :can_update, default: false
			t.boolean :can_delete, default: false
			t.boolean :is_admin, default: false

			t.timestamps
		end
	end
end
