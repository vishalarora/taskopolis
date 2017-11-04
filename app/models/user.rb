class User < ApplicationRecord
  has_merit

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tasks, dependent: :destroy
  has_many :lists, dependent: :destroy
end
