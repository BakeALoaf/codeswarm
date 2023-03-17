class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :freelancespec
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects, dependent: :destroy

  has_many :received_requests, foreign_key: "receiver_id", class_name: "Request"
  has_many :sent_requests, foreign_key: "sender_id", class_name: "Request"

end
