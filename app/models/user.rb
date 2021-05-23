class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates_length_of :name, maximum: 50, allow_blank: false

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
