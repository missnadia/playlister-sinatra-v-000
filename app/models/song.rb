class Song < ActiveRecord::Base

  extend Slug
  include Slug

  has_many :song_genres
  belongs_to :artist
  has_many :genres, through: :song_genres

  def self.find_by_slug(slug)
    self.all.find{ |c| c.slug == slug}
  end

  def slug
    name.downcase.gsub(" ","-")
  end
end
