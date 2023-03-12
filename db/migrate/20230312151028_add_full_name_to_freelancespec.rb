class AddFullNameToFreelancespec < ActiveRecord::Migration[7.0]
  def change
    add_column :freelancespecs, :first_name, :string
    add_column :freelancespecs, :last_name, :string
  end
end
