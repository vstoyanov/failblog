class Publication < ActiveRecord::Base
  has_many :comments
  has_and_belongs_to_many :categories
  attr_accessible :content, :title
  validates_presence_of :content, :title


end
