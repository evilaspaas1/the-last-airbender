require "rails_helper"

describe Member do
  it "exists" do
    attributes = {
      name: "Aang",
      allies: "Katara",
      enemies: "Zuko",
      photoUrl: "fake photo url"
    }

    member = Member.new(attributes)

    expect(member).to be_a Member
    expect(member.name).to eq("Aang")
    expect(member.allies).to eq("Katara")
    expect(member.enemies).to eq("Zuko")
    expect(member.photo_url).to eq("fake photo url")
  end
end
