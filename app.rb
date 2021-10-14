require "sinatra/base"
require "sinatra/reloader"
require "./lib/bookmark"

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions, :method_override

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
    Bookmark.create(url: params[:url], title: params[:title])
    redirect("/bookmarks")
  end

  delete "/bookmarks/:id" do
    Bookmark.delete(id: params[:id])
    redirect "/bookmarks"
  end

  get "/bookmarks/:id/edit" do
    @bookmark_id = params[:id]
    erb :'edit'
  end

  patch "/bookmarks/:id" do
    Bookmark.update(id: params[:id], title: params[:title], url: params[:url])
    redirect "/bookmarks"
  end

  run! if app_file == $0
end
