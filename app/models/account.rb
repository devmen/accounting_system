class Account < ActiveRecord::Base
  attr_accessible :title, :description

  belongs_to :user

  validates_presence_of :title
  validates_length_of :title, :within => 3..50

end
