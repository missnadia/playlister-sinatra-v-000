class SongGenre < ActiveRecord::Base

  extend Slug
  include Slug

  belongs_to :song
  belongs_to :genre
end
