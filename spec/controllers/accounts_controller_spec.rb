require 'spec_helper'

describe AccountsController do
  before(:each) do
    controller.stub!(:authenticate_user!).and_return(true)
    @user = FactoryGirl.create(:user)

    controller.stub!(:current_user).and_return(@user)
  end

  describe "GET 'index'" do
    it "returns http success" do

      get 'index'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

end
