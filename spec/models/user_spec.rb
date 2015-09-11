require "rails_helper"

RSpec.describe "user model", type: :model do
  context "a user" do
    before do
      login_user
    end

    it "has a provider" do
      expect(user.provider).to eq "instagram"
    end

    it "has a uid" do
      expect(user.uid).to eq "1111"
    end

    it "has a name" do
      expect(user.name).to eq "Drew"
    end

    it "has a token" do
      expect(user.token).to eq ENV['USER_TOKEN']
    end
  end
end
