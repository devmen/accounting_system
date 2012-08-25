class Payment < ActiveRecord::Base
  attr_accessible :amount, :description, :user_id
end
