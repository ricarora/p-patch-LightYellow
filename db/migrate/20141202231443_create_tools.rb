class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :name
      t.boolean :available
      t.integer :quantity

      t.timestamps
    end
  end
end
