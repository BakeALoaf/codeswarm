class AddUserToFreelancespec < ActiveRecord::Migration[7.0]
  def change
    add_reference :freelancespecs, :user, null: false, foreign_key: true
  end
end
