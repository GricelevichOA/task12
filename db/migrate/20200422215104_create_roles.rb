class CreateRoles < ActiveRecord::Migration[5.2]
	def change
		create_table :roles do |t|
			t.boolean :create
			t.boolean :read
			t.boolean :update
			t.boolean :delete
			t.boolean :admin

			t.timestamps
		end
	end
end
