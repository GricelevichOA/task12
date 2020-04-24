class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
    	t.string :topic
    	t.string :description
    	t.integer :status

    	t.timestamps
    end
  end
end
