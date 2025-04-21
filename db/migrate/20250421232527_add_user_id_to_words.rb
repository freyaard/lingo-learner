class AddUserIdToWords < ActiveRecord::Migration[8.0]
  def change
    add_column :words, :user_id, :string
  end
end
