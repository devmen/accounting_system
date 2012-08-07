# encoding: utf-8

require 'spec_helper'

describe "Control link" do
  it "should have a link to registration and login" do
    visit root_path
    page.should have_content("Регистрация")
    page.should have_content("Войти")
  end

end
