require 'spec_helper'

describe Account do
  it{should belong_to(:user)}
  it{should validate_presence_of(:title)}
  it{should allow_value("blah").for(:title)}
  it{should_not allow_value("12").for(:title)}
  it{should_not allow_value("123456789009876544322sjhajshdakjshsjdhsakjdhfkjsahdf").for(:title)}
end
