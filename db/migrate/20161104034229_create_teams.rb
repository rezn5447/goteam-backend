class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :season
      t.references :match
      t.references :sport
      t.integer :score
      t.string :home

      t.timestamps
    end
  end
end
