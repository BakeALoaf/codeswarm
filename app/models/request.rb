class Request < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'

  enum status: {
    pending: 'pending',
    accepted: 'accepted',
    rejected: 'rejected'
  }
end
