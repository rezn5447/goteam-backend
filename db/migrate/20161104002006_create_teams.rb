class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :season
      t.references :user, foreign_key: true
      t.references :competition, foreign_key: true
      t.references :sport, foreign_key: true
      t.boolean :win

      t.timestamps
    end
  end
end
