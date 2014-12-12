rakeclass CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :company
      t.string :link
      t.text :description
      t.string :date
      t.integer :level
      t.text :resume
      t.string :img
      t.string :cover
      t.integer :active

      t.timestamps
    end
  end
end
