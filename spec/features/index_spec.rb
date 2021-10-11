# frozen_string_literal: true

feature 'index page' do
  scenario 'visit index page' do
    visit '/'
    expect(page).to have_content('Hello World!')
  end
end
