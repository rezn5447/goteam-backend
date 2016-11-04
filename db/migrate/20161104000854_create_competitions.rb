class CreateCompetitions < ActiveRecord::Migration[5.0]
  def change
    create_table :competitions do |t|
      t.string :location
      t.datetime :date

      t.timestamps
    end
  end
end
