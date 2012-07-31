require 'spec_helper'

describe "StaticPages" do
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector 'h1',    text: page_title }
    it { should have_selector 'title', text: full_title(page_title) }
    # it { should have_link 'About', href: about_path }
    # it { should have_link 'Help',   href: help_path }
    # it { should have_link 'Contact',  href: contact_path }
    # it { should have_link 'Home', href: root_path }
    # it { should have_link 'Sign in', href: signup_path }
    # it { should have_link 'News', href: 'http://news.railstutorial.org/'}
  end


  describe "Home page" do
    before { visit root_path }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    # it { should_not have_selector 'head title', text: '| Home' }
  end

  describe "Help page" do
    before { visit help_path }
    let(:page_title) { 'Help' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }
    let(:page_title) { 'About Us' }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:page_title) { 'Contact' }

    it_should_behave_like "all static pages"
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    should have_selector 'title', text: full_title('About Us')
    click_link "Help"
    should have_selector 'title', text: full_title('Help')
    should have_selector 'h1', text: 'Help'
    click_link "Contact"
    should have_selector 'title', text: full_title('Contact')
    should have_selector 'h1', text: 'Contact'
    click_link "Home"
    click_link "Sign up now!"
    should have_selector 'title', text: full_title('Sign up')
    should have_selector 'h1', text: 'Sign up'
    click_link "sample app"
    should have_selector 'title', text: full_title('')
    should have_selector 'h1', text: 'Sample App'
  end
end
