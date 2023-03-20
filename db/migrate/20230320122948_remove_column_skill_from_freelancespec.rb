class RemoveColumnSkillFromFreelancespec < ActiveRecord::Migration[7.0]
  def change
    remove_column :freelancespecs, :skill, :string
  end
end
