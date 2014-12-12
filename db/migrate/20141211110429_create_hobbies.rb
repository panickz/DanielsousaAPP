class CreateHobbies < ActiveRecord::Migration
  def change
    create_table :hobbies do |t|
      t.string :name
      t.integer :level
      t.integer :active

      t.timestamps
    end
  end
end
