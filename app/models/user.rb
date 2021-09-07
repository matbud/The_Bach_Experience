class User < ApplicationRecord
  has_one :event # to change
  has_many :messages
  has_one :guest # to change
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: true
  validates :first_name, :last_name, length: { minimum: 2, maximum: 20 }
end
