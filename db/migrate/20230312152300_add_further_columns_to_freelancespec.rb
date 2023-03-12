class AddFurtherColumnsToFreelancespec < ActiveRecord::Migration[7.0]
  def change
    add_column :freelancespecs, :skill, :string
    add_column :freelancespecs, :portfolio, :string
    add_column :freelancespecs, :pricing, :decimal
  end
end
