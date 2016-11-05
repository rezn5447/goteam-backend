class CreateActives < ActiveRecord::Migration[5.0]
  def change
    create_table :actives do |t|
      t.boolean :status, null: false, default: false
      t.references :user
      t.references :sport

      t.timestamps
    end
  end
end
