require 'spec_helper'

describe "Visit category view" do

  before(:each) do
    @category = FactoryGirl.create :category
  end

  it "should be able to click in the category view" do
    visit '/'
    click_link @category.name
    page.has_content?(@category.name)
  end
end