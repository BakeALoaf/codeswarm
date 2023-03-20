class RemoveIndexFromRequests < ActiveRecord::Migration[7.0]
  def change
    remove_index :requests, name: "index_requests_on_sender_id_unique"
    remove_index :requests, name: "index_requests_on_recipient_id_unique"
  end
end
