class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :tool_id
      t.integer :user_id
      t.integer :quantity
      t.datetime :checkout_date
      t.datetime :due_date

      t.timestamps
    end
  end
end
