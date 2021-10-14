require "sinatra/base"
require "sinatra/reloader"
require "./lib/bookmark"

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    "Bookmark Manager"
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
    erb :index
  end

  get "/create" do
    erb :create
  end

  post "/create-bookmark" do
    Bookmark.create(url: params[:enter_url])
    redirect("/bookmarks")
  end
end
