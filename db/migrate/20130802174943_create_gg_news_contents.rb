class CreateGgNewsContents < ActiveRecord::Migration
  def change
    create_table :gg_news_contents do |t|
      t.integer :news_id
      t.text :content
      t.text :extra

      t.timestamps
    end
  end
end
