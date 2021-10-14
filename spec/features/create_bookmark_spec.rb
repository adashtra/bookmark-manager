require "pg"

feature "Creating a bookmark" do
  scenario "When a user wants to save a bookmark" do
    connection = PG.connect(dbname: "bookmark_manager_test")
    visit("/create")
    fill_in("url", with: "https://www.google.com/")
    fill_in("title", with: "Google")
    click_button("Submit")
    expect(page).to have_link("Google", href: "https://www.google.com/")
  end

  scenario "View added bookmark" do
    connection = PG.connect(dbname: "bookmark_manager_test")
    visit("/create")
    fill_in "url", with: "youtube.com"
    fill_in "title", with: "Youtube"
    click_button("Submit")
    visit("/bookmarks")
    expect(page).to have_content("Youtube")
  end
end
