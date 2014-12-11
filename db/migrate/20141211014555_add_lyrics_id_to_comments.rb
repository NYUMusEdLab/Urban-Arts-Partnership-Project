class AddLyricsIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :lyric_id, :integer
  end
end
