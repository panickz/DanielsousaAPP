class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :level
      t.integer :category_id
      t.integer :active

      t.timestamps
    end
  end
end
