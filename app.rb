require "sinatra/base"
require "sinatra/reloader"

class BookmarkManager < Sinatra::Base
  enable :sessions

  get "/" do
    "Hello World!"
  end

  get "/bookmarks" do
    erb(:bookmarks)
  end
end
