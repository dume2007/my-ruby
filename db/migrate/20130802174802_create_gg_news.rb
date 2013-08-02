class CreateGgNews < ActiveRecord::Migration
  def change
    create_table :gg_news do |t|
      t.integer :classid
      t.string :imgurl
      t.string :title
      t.string :author
      t.integer :filesize
      t.string :fileimg
      t.integer :onclick

      t.timestamps
    end
  end
end
