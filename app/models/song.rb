class Song < ActiveRecord::Base
  has_many :lyrics
  has_many :keywords

  def create_lyrics(lyrics)
    content = lyrics[:content]
    content_array = content.split("<>")
    content_array.each_with_index do |content_value, index|
      self.lyrics.create(content: content_value, info: index.odd? ) if content_value.length > 0
    end
  end 

  def lyrics_with_definitions
    self.lyrics.where(info: true)
  end
end
