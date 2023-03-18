class ChangeColumnNameInRequests < ActiveRecord::Migration[7.0]
  def change
    rename_column :requests, :message, :title
    add_column :requests, :description, :text
  end
end
