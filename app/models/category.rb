class Category < ActiveRecord::Base
  has_and_belongs_to_many :publications
  attr_accessible :name
end
