class RemoveInfoFromLyrics < ActiveRecord::Migration
  def change
    remove_column :lyrics, :info
  end
end
