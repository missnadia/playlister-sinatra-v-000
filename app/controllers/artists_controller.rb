class ArtistsController < ApplicationController

  get '/artists' do
    @artists = Artist.all
    erb :"/artists/index"
  end

  '/artists/:slug'
end
