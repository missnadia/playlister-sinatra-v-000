class Artist < ActiveRecord::Base

  extend SlugMethods::ClassMethods
  include SlugMethods::InstanceMethods

  has_many :songs
  has_many :genres, through: :songs
end
