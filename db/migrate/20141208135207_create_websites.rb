class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :title
      t.string :email
      t.integer :phone
      t.string :name
      t.string :position
      t.text :text

      t.timestamps
    end
  end
end
