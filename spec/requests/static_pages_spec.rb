require 'spec_helper'

describe "StaticPages" do
  describe "Home pages" do

  	it "should have the content 'Ubuntu Blog'" do
  		visit '/'
  		expect(page).to have_content('Ubuntu Blog')
  	end

  	it "should have the the title 'Home'" do
  		visit '/'
  		expect(page).to have_title("Ubuntu Blog")
  	end

  	  	it "should not have a custom page title" do
  		visit '/'
  		expect(page).not_to have_title('| Home')
  	end
  end

  describe "Help page" do

  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content ('Help')
  	end

  	it "should have the the title 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_title("Ubuntu Blog | Help")
  	end
  end

  describe "About page" do

  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end

  	  it "should have the the title 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_title("Ubuntu Blog")
  	end
  end

#  describe "Contact page" do
#
#  	it "should have the content 'Contact'" do
#  		visit '/static_pages/contact'
#  		expect(page).to have_content('Contact')
#  	end
#
#  	  it "should have the the title 'Contact'" do
#  		visit '/static_pages/contact'
#  		expect(page).to have_title("Ubuntu Blog | Contact")
#  	end
#  end
end