class CreateLyrics < ActiveRecord::Migration
  def change
    create_table :lyrics do |t|
      t.text :content
      t.boolean :info
      t.text :definition
      t.integer :song_id

      t.timestamps null: false
    end
  end
end
