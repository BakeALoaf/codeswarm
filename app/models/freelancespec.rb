class Freelancespec < ApplicationRecord
  belongs_to :user
  # serialize :skill, Array
  # acts_as_taggable_on :skill
end
