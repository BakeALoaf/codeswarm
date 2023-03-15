class Freelancespec < ApplicationRecord
  belongs_to :user
  acts_as_taggable_on :tags
  # acts_as_taggable_on :skill

  scope :by_skill_in_project, ->(tags) { where("skill LIKE ?", "%#{tags}%") }
end
