class Book < ActiveRecord::Base
  belongs_to :library
  has_many :book_users
  has_many :users, through: :book_users

  validates :title, length: { in: 2...80 }
  validates :author, length: { in: 2...80 }
  validates :section, length: { in: 2...80 }
  validates :library, presence: true
end
