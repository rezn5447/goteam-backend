class CreateStats < ActiveRecord::Migration[5.0]
	def change
		create_table :stats do |t|
			t.references :user, null:false
			t.references :sport, null:false
			t.integer :rating, default: 50, null:false
			# t.integer :win, default: 0, null:false
			t.string :division, default:"Silver",null:false
			t.string :active,default: "false", null:false

			t.timestamps
		end
	end
end
