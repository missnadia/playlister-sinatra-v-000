class Song::Slug < ActiveRecord::Base

  extend Slug
  include Slug

  has_many :song_genres
  belongs_to :artist
  has_many :genres, through: :song_genres
end
