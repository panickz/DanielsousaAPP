class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :title
      t.integer :skill
      t.integer :skills_category_id

      t.timestamps
    end
  end
end
