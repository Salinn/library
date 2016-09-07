class User < ActiveRecord::Base
    has_many :book_users
    has_many :books, through: :book_users
    
    validates :first_name, length: { in: 2...40 }
    validates :last_name, length: { in: 2...40 }
    validates_format_of :email, with: /@/
end
