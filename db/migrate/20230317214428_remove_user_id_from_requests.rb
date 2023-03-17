class RemoveUserIdFromRequests < ActiveRecord::Migration[7.0]
  def change
    remove_column :requests, :user_id, :bigint
  end
end
