require 'rails_helper'

describe "SearchResult poro" do
  it "exists" do
    search_result = SearchResult.new("Fire Nation")

    expect(search_result).to be_instance_of(SearchResult)
  end

  it "has attributes" do
    search_result = SearchResult.new("Fire Nation")

    expect(search_result.nation).to eq("Fire Nation")
  end

  context "instance methods" do
    it "#members" do
      search_result = SearchResult.new("Fire Nation")

      expect(search_result.members.count).to eq(20)
      expect(search_result.members).to be_an(Array)
    end
  end
end
