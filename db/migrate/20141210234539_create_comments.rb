class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :song_id
      t.integer :keyword_id
      t.text :content

      t.timestamps null: false
    end
  end
end
