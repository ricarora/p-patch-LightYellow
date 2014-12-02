class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :details
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.string :classification

      t.timestamps
    end
  end
end
