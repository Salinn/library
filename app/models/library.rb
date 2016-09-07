class Library < ActiveRecord::Base
    validates :name, length: { in: 2...80 }
end
