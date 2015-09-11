require "rails_helper"

RSpec.describe "user logs in", type: :feature do
  context "A user with account" do
    it "logs in" do
      VCR.use_cassette("user_login_test#login") do
        visit root_path
        login_user

        click_link "Login with Instagram"
        expect(current_path).to eq dashboard_path
      end
    end

    it "logs out" do
      VCR.use_cassette("user_login_test#logout") do
        visit root_path
        login_user

        click_link "Login with Instagram"

        expect(current_path).to eq dashboard_path

        click_link "Logout"
        expect(current_path).to eq root_path
      end
    end
  end

end
