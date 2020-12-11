require "rails_helper"

describe "As a Visitor" do
  it "When I visit the root path I can search for members of a nation" do
    visit "/"

    select "Fire Nation", from: "nation"

    click_on "Search For Members"

    expect(current_path).to eq("/search")

    expect(page).to have_content("20 Members")

    expect(page).to have_css(".member", count: 20)

    within(first(".member")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".allies")
      expect(page).to have_css(".enemies")
    end
  end
end
