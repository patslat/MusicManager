class AddRecordingToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :recording, :string
  end
end
