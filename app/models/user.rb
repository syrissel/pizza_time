class User < ApplicationRecord
  validates :name, :email, presence: true

  # Validate email with constant built into URI in the standard ruby library.
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_many :orders
end
