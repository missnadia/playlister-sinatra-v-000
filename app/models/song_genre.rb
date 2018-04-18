class SongGenre < ActiveRecord::Base

  extend Slug::ClassMethods
  include Slug::InstanceMethods

  belongs_to :song
  belongs_to :genre
end
