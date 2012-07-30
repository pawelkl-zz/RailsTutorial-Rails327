require 'spec_helper'

describe "StaticPages" do
	let(:base_title) {"SampleApp"}

  describe "Home page" do
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the content 'Sample App" do
    	visit '/static_pages/home'
      page.should have_content('Sample App')
    end
    it "should have the right title" do
    	visit '/static_pages/home'
    	page.should have_selector('title',
												    		:text => "#{base_title} | Home")
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
												    		:text => "#{base_title} | Help")
    end
  end
# 3.2.2
  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    it "should have the right title" do
    	visit '/static_pages/about'
    	page.should have_selector('title',
												    		:text => "#{base_title} | About")
    end
  end

  describe "Contact page" do
  	it "should have the content 'Contact'" do
  		visit '/static_pages/contact'
  		page.should have_content('Contact')
  	end
  	it "should have the right title" do
  		visit '/static_pages/contact'
  		page.should have_selector('title',
												  			:text => "#{base_title} | Contact")
  	end
  end
end
