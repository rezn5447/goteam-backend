class CreateStates < ActiveRecord::Migration[5.0]
	def change
		create_table :states do |t|
			t.references :user, null:false
			t.references :sport, null:false
			t.integer :rating, default: 50
			t.integer :win, default: 0
			t.boolean :active,default: false

			t.timestamps
		end
	end
end
