class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.string  :title
      t.text    :description
      t.integer :summa, :default => 0, :null => false

      t.timestamps
    end

    add_index :accounts, :user_id
  end
end
