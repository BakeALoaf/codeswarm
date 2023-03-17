class AddStatusToRequests < ActiveRecord::Migration[7.0]
  def change
    add_column :requests, :status, :integer, default: 0
    add_index :requests, :status
  end
end
