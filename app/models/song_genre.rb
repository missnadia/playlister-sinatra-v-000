class SongGenre < ActiveRecord::Base

  extend SlugMethods::ClassMethods
  include SlugMethods::InstanceMethods

  belongs_to :song
  belongs_to :genre
end
