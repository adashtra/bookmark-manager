feature "index page" do
  scenario "visit bookmarks page" do
    visit "/bookmarks"
    expect(page).to have_content("https://www.destroyallsoftware.com/")
    expect(page).to have_content("https://github.com/makersacademy/course/blob/main/apprenticeship_module_outlines.md")
  end
end
