class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :position
      t.text :text
      t.string :first_date
      t.string :seconde_date
      t.string :icon

      t.timestamps
    end
  end
end
