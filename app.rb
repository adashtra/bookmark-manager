require "sinatra/base"
require "sinatra/reloader"

class BookmarkManager < Sinatra::Base
  enable :sessions

  get "/" do
    "Hello World!"
  end
end
