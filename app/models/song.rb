class Song < ActiveRecord::Base

  extend Slug::ClassMethods
  include Slug::InstanceMethods

  has_many :song_genres
  belongs_to :artist
  has_many :genres, through: :song_genres
end
