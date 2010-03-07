require File.dirname(__FILE__) + '/../test_helper'

class UsersControllerTest < ActionController::TestCase
  
  fixtures :all
  
  context "viewing user index" do
    before { get :index }
    
    count("#users li").should_be 2
    element("#users").should_be_present
    element("ul li:first").should_be "bob"
    element("ul li:nth(3)").should_be_missing
    element("section h1").should_contain /users/i
  end
end
