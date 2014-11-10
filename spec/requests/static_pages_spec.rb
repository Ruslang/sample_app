require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home pages" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title(Home | "#{base_title}")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title(Help | "#{base_title}")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title(About Us | "#{base_title}")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contacts'" do
      visit '/static_pages/contacts'
      expect(page).to have_content("Contacts")
    end
    it "should have the right title 'Contacts'" do
      visit '/static_pages/contacts'
      expect(page).to have_title(Contacts | "#{base_title}")
    end
  end
end
