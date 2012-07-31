require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector 'h1',    text: 'Sample App' }
    # binding.pry
    it { should have_selector 'title', text: full_title('') }
    # it { should_not have_selector 'title', text: ' | Home' }

    it { should have_link('About', href: about_path) }
    it { should have_link('Help',   href: help_path ) }
    it { should have_link('Contact',  href: contact_path ) }
    it { should have_link('Home', href: root_path)}
    # it { should have_link('Sign in', href: '#') }
    it { should have_link('News', href: 'http://news.railstutorial.org/')}
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_selector 'h1',     text: 'Help' }
    it { should have_selector 'title',   text: full_title('Help') }
  end

  describe "About page" do
    before { visit about_path }
    it { should have_selector 'h1',      text: 'About Us' }
    it { should have_selector 'title',    text: full_title('About') }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_selector 'h1',     text: 'Contact page' }
    it { should have_selector 'title',   text: full_title('Contact') }
  end
end
