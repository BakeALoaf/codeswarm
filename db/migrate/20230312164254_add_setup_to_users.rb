class AddSetupToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :setup, :boolean, default: false
  end
end
