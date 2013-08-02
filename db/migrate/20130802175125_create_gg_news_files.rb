class CreateGgNewsFiles < ActiveRecord::Migration
  def change
    create_table :gg_news_files do |t|
      t.integer :news_id
      t.text :downpath

      t.timestamps
    end
  end
end
