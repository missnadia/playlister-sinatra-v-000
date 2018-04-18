class Artist < ActiveRecord::Base

  extend Slug
  include Slug
  
  has_many :songs
  has_many :genres, through: :songs
end
