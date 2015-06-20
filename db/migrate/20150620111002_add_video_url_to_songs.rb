class AddVideoUrlToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :video_url, :string
  end
end
