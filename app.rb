# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require 'Bookmark'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    'Hello World!'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end
end
