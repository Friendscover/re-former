class User < ApplicationRecord
  validates :username, presence: true, length: { in: 5..24, message: "Please choose a username with 5 to 24 characters!"}
  validates :email, uniqueness: true

  validates :password, presence: true, length: { in: 8..40, message: "Password has to be betweeen 8 and 40 characters!"}, format: { with: /\W{2,}/, message: "Include atleast 2 special character!" }
end
