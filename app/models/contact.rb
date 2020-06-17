class Contact < ApplicationRecord
  attr_accessor :name, :email, :subject, :message

  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
  validates :subject, presence: true, length: {maximum: 300}
  validates :message, presence: true, length: {maximum: 1000}
end
