class AddUserIdToRequests < ActiveRecord::Migration[7.0]
  def change
    add_column :requests, :user_id, :bigint
    add_index :requests, :user_id
  end
end
