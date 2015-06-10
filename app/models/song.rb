class Song < ActiveRecord::Base
  has_many :lyrics
  has_many :keywords

  def lyrics_with_definitions
    self.lyrics.where(info: true)
  end

  def slug
    name.downcase.gsub(" ", "-")  
  end
  
  def to_param
    "#{title}"
  end
end
