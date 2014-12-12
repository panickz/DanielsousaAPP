class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :title
      t.text :description
      t.string :email
      t.integer :phone
      t.string :cover_photo
      t.string :position
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.string :name

      t.timestamps
    end
  end
end
