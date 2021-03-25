class User < ApplicationRecord
  has_many :connections
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
