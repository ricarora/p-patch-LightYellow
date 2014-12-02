class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :blogpost_id
      t.integer :user_id
      t.text :content
      t.string :title

      t.timestamps
    end
  end
end
