class AddCheckpointToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :checkpoint, :boolean
  end
end
