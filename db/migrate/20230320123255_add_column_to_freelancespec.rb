class AddColumnToFreelancespec < ActiveRecord::Migration[7.0]
  def change
    add_column :freelancespecs, :skill, :text, array: true, default: []
  end
end
