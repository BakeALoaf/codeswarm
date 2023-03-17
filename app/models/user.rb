class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :freelancespec
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects, dependent: :destroy

  has_many :requests, dependent: :destroy
  has_many :received_requests, class_name: "Request", foreign_key: "user_id", dependent: :destroy
  has_many :requestors, through: :received_requests, source: :requestor

end
