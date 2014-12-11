class Song < ActiveRecord::Base
  has_many :lyrics
  has_many :keywords


end
