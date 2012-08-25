class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.integer :account_id
      t.float :amount
      t.text :description

      t.timestamps
    end
  end
end
