class CreateCalenders < ActiveRecord::Migration
  def change
    create_table :calenders do |t|
      t.string :date_1
      t.string :date_2
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
