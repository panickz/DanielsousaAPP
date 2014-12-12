class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :position
      t.string :date
      t.text :description
      t.string :website
      t.integer :type

      t.timestamps
    end
  end
end
