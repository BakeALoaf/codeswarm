class RemoveStatusFromRequests < ActiveRecord::Migration[7.0]
  def change
    remove_column :requests, :status, :string
  end
end
