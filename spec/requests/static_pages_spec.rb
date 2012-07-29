require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the content 'Sample App" do
    	visit '/static_pages/home'
    	page.should	have_content('Sample App')
    end
    it "should have the right title" do
    	visit '/static_pages/home'
    	page.should have_selector('title',
												    		:text => "SampleApp | Home")
    end
  end

  describe "Help page" do
  	it "should have the content 'Help" do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end
    it "should have the right title" do
    	visit '/static_pages/help'
    	page.should have_selector('title',
												    		:text => "SampleApp | Help")
    end
  end
# 3.2.2
  describe "About page" do
  #   it "should have the content 'About Us'" do
  #     visit '/static_pages/about'
  #     page.should have_content('About Us')
  #   end
    it "should have the right title" do
    	visit '/static_pages/about'
    	page.should have_selector('title',
												    		:text => "SampleApp | About")
    end
  end
end
