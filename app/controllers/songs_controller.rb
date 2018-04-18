class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :"/songs/index"
  end


  get '/songs/new' do
    erb :"/songs/new"
  end

  post '/songs' do
    @song = Song.create(params[:song])
    if !params["song"]["name"].empty?
      @song.name << Song.create(name: params["song"]["name"])
    end
    @song.save

    flash[:message] = "Successfully created song."
    redirect :"/songs/#{@song.slug}"
  end

  patch '/songs/:slug' do

  end

  '/songs/:slug/edit'
end
