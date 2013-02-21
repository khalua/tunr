class CreateAlbumsTable < ActiveRecord::Migration
  def change
    create_table  :albums do |t|
      t.string  :name
      t.string  :image
      t.integer :song_id
      t.integer :user_id
      t.timestamps
    end
  end
end
