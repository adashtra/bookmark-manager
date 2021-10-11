# frozen_string_literal: true

describe 'database contains default links' do
  it 'has the bookmark links' do
    bookmarks = Bookmark.all
    expect(bookmarks).to include 'http://www.makersacademy.com'
    expect(bookmarks).to include 'http://www.google.com'
    expect(bookmarks).to include 'http://www.destroyallsoftware.com'
  end
end
