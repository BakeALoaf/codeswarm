class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.text :message
      t.string :status
      t.references :sender, null: false, foreign_key: { to_table: :users }
      t.references :recipient, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end
    add_index :requests, :sender_id, unique: true, name: 'index_requests_on_sender_id_unique'
    add_index :requests, :recipient_id, unique: true, name: 'index_requests_on_recipient_id_unique'
  end
end
