class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :season, null: false
      t.references :match, null: false
      t.references :sport, null: false
      t.integer :score, default: 0, null: false
      t.string :home, null: false

      t.timestamps
    end
  end
end
