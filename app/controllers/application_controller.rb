class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  get '/songs' do
    @songs = Song.all
    redirect :"/songs/show"
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

  '/genres'

  '/artists'

  patch '/songs/:slug' do

  end

  '/artists/:slug'

  '/genres/:slug'

  '/songs/new'

  '/songs/:slug/edit'
end
