class CreateGgClasslists < ActiveRecord::Migration
  def change
    create_table :gg_classlists do |t|
      t.string :classname

      t.timestamps
    end
  end
end
