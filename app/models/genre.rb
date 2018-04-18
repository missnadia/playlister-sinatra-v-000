class Genre < ActiveRecord::Base

  extend SlugMethods::ClassMethods
  include SlugMethods::InstanceMethods

  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs
end
