describe ".all" do
  it "returns a list of bookmarks" do
    connection = PG.connect(dbname: "bookmark_manager_test")

    # Add the test data
    connection.exec("INSERT INTO bookmarks (url) VALUES('https://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('https://www.google.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('https://www.destroyallsoftware.com');")

    bookmarks = Bookmark.all
    expect(bookmarks).to include "https://www.makersacademy.com"
    expect(bookmarks).to include "https://www.google.com"
    expect(bookmarks).to include "https://www.destroyallsoftware.com"
  end
end
