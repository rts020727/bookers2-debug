class AddMapsToLatitude < ActiveRecord::Migration[6.1]
  def change
    add_column :maps, :latitude, :float
  end
end
