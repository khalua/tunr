class AddCostToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :cost, :decimal, :default => 1
  end
end
