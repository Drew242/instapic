require 'rails_helper'

RSpec.describe "#landing_page" do

  context "when visiting the root path" do
    it "user can see the title of the site" do
      visit root_path

      expect(page).to have_content("API-rture")
      expect(current_path).to eq(root_path)
    end
  end

end
