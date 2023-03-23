class Project < ApplicationRecord
  has_one_attached :photo

  serialize :tags, Array
end
