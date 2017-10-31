require 'rails_helper'

RSpec.describe "User visits items index" do
  let(:category) { create(:category) }

  scenario "user sees items on the page" do
    item = create(:item, category: category)

    visit items_path

    expect(current_path).to eq '/items'
    expect(page).to have_content(item.title)
    expect(page).to have_content(item.description)
    expect(page).to have_css(".image")
  end
end
