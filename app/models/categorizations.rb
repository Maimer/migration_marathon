class Categorizations < ActiveRecord::Base
  has_many :books
  has_many :categories
end
