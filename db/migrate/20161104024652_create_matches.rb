class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.string :location
      t.string :date
      t.references :sport

      t.timestamps
    end
  end
end
