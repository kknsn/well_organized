class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :name, presence: true
         with_options format: { with: /\A[a-zA-Z0-9]+\z/ } do
          validates :password
        end

  has_many :books
end
