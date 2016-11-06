class CreateUserteams < ActiveRecord::Migration[5.0]
  def change
    create_table :userteams do |t|
      t.references :user
      t.references :team

      t.timestamps
    end
  end
end
