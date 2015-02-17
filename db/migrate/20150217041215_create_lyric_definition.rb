class CreateLyricDefinition < ActiveRecord::Migration
  def change
    create_table :lyric_definitions do |t|
      t.string :content
    end
  end
end
