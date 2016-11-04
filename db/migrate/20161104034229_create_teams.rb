class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :season
      t.references :match, foreign_key: true
      t.references :sport, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
