class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :school
      t.integer :handphone
      t.integer :team_id

      t.timestamps
    end
  end
end
