require 'spec_helper'

describe "LayoutLinks" do
    
    it "should have a Home page at '/'" do 
    get '/'
  end
  
  it "should have a Contact page at '/contact'" do
    get '/contact'
  end 
  
  it "should have a About page at '/about'" do
    get '/about'
  end
  
  it "should have a Help page at '/help'" do
    get '/help'
  end 
  
  it "should have a SignUp  page at '/signup'" do
     get '/signup'
  end
  
  it "should have the right links on the layout" do
    visit root_path
    response.should have_selector('title', :content => "Home")
    click_link "About"
    response.should have_selector('title', :content => "About")
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")
    click_link "Home"
    response.should have_selector('title', :content => "Home")
    click_link "Sign Up Now!"
    response.should have_selector('title', :content => "Sign up")
    response.should have_selector('a[href/]>img')
    end
  
end
