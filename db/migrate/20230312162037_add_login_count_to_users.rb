class AddLoginCountToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :login_count, :integer
  end
end
