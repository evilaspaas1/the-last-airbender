require 'rails_helper'

describe LastAirbenderService do
  context "instance methods" do
    context "#members" do
      it "returns member data" do
        service = LastAirbenderService.new
        search = service.members("Nation", "Fire")
        expect(search).to be_an Array
        member_data = search.first

        expect(member_data).to have_key :name
        expect(member_data).to have_key :allies
        expect(member_data).to have_key :enemies
        expect(member_data).to have_key :photoUrl
      end
    end
  end
end
