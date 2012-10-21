require 'spec_helper'

describe HomeController  do

  describe "index" do

    it "should be successful" do
      get :index
      response.code.should == "200"
    end

    it "should have assign the main_category " do
      category = FactoryGirl.create :category, :name => "first"
      get :index
      assigns[:current_category].id.should == category.id
    end

  end

end