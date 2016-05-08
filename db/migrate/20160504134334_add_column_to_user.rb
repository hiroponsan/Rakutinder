class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :date_1, :string
    add_column :users, :date_2, :string
  end
end
