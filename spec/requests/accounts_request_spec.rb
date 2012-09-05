# encoding: utf-8

require 'spec_helper'


describe "Manage account" do

  before(:each) { create_logged_in_user }

  it "should create account" do
    visit new_account_path
    fill_in "account_title", :with => "Мособл Банк(RUR)"
    fill_in "account_description", :with => Faker::Lorem.sentence

    click_button "Создать счет"

    page.should have_flash_notice("Счет добавлен")

    Account.first.title.should eql("Мособл Банк(RUR)")
  end

  it "should has validation error on title" do
    visit new_account_path
    fill_in "account_title", :with => ""
    fill_in "account_description", :with => Faker::Lorem.sentence

    click_button "Создать счет"

    page.should have_validation_error_on("account_title")

  end



  describe "with account" do
    let(:account){ FactoryGirl.create(:account, :user => User.first) }

    it "should be updated" do
      visit edit_account_path(account.id)
      fill_in "account_title", :with => "test account"
      fill_in "account_description", :with => "test description"

      click_button "Сохранить"

      current_path.should == account_path(account)
      @account = Account.find(account.id)
      @account.title.should eql("test account")
      @account.description.should eql("test description")
      page.should have_content("test account")
      page.should have_content("test description")
    end

    it "should be deleted" do
      visit account_path(account.id)
      click_on "Удалить"
      current_path.should == accounts_path
      page.should have_flash_notice("Счет удален")
    end

  end

end
