class AddWordClassToKeywords < ActiveRecord::Migration
  def change
    add_column :keywords, :word_class, :string
  end
end
