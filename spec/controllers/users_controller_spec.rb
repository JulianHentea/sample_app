require 'spec_helper'

describe UsersController do
  render_views
  
  #  describe "GET 'show'" do
  # 
  #     before(:each) do
  #       @user = FactoryGirl(:user)
  #     User.stub!(:find, @user.id) .and_return(@user)
  #     end
  # 
  #     it "should be successful" do
  #       get :show, :id => @user.id
  #       response.should be_success
  #     end
  #     it "should find the right  user" do 
  #       get :show, :id => @user
  #       assigns(:user).should == @user
  #     end
  # end
  
  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end
end
