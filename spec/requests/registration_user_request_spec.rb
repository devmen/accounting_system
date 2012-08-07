require "spec_helper"

describe "Registration" do
  it "should have a form" do
    visit new_user_registration_path
    page.should have_selector('form')
  end

end

