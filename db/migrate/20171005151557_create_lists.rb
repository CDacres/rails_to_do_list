class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.text :item
      t.integer :user_id

      t.timestamps
    end
  end
end
