class Comment < ActiveRecord::Base
  belongs_to :keyword
  belongs_to :lyric
  
end
