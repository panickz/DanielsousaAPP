class CreateSkillsCategories < ActiveRecord::Migration
  def change
    create_table :skills_categories do |t|
      t.string :title
      t.integer :icon

      t.timestamps
    end
  end
end
