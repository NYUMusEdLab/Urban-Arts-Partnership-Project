class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.integer :song_id
      t.text :definition

      t.timestamps null: false
    end
  end
end
