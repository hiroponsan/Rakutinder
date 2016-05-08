class AddTimeToUser < ActiveRecord::Migration
  def change
    add_column :users, :date_1_time, :string
    add_column :users, :date_2_time, :string
  end
end
