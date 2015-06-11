class Library < ActiveRecord::Base
	has_many :books_libraries
	has_many :books, through: :books_libraries
end
