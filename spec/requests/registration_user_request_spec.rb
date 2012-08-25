# encoding: UTF-8
require "spec_helper"

describe "Registration" do
  it "should have a form" do
    visit new_user_registration_path
    page.should have_selector('form')
  end

  it "should registred user" do
    visit new_user_registration_path
    fill_in 'user_email', :with => 'alex@devmen.com'
    fill_in 'user_password', :with => 'password'
    fill_in 'user_password_confirmation', :with => 'password'

    click_button 'Регистрация'
    #page.should redirect_to(root_path)

    User.first.email.should eql("alex@devmen.com")
  end

  it "invalid user" do
    visit new_user_registration_path
    fill_in 'user_email', :with => 'alex@devmen.com'
    fill_in 'user_password', :with => 'password'
    fill_in 'user_password_confirmation', :with => 'password1'

    click_button 'Регистрация'

    page.should have_selector("#user_email") #form

  end

  describe "edit" do
    let(:authed_user) { create_logged_in_user }

    it "should be updated" do
      visit edit_user_registration_path(authed_user)
      fill_in 'user_email', :with => 'alex1@devmen.com'
      fill_in 'user_password', :with => ''
      fill_in 'user_current_password', :with => 'password'

      click_button 'Редактировать'

      User.first.email.should eql("alex1@devmen.com")
    end
  end


end

