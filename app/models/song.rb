class Song < ActiveRecord::Base

  extend SlugMethods::ClassMethods
  include SlugMethods::InstanceMethods

  has_many :song_genres
  belongs_to :artist
  has_many :genres, through: :song_genres
end
