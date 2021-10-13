require "pg"

feature "Creating a bookmark" do
  scenario "When a user wants to save a bookmark" do
    connection = PG.connect(dbname: "bookmark_manager_test")
    visit("/create")
    expect(page).to have_button("Submit")
  end

  scenario "View added bookmark" do
    connection = PG.connect(dbname: "bookmark_manager_test")
    visit("/create")
    fill_in "enter_url", with: "youtube.com"
    click_button("Submit")
    visit("/bookmarks")
    expect(page).to have_content("youtube.com")
  end
end
