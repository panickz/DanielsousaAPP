class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :text
      t.string :img
      t.string :img_cover
      t.integer :year
      t.integer :type

      t.timestamps
    end
  end
end
