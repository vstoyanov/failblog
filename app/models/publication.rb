class Publication < ActiveRecord::Base
  attr_accessible :content, :title
  validates_presence_of :content, :title
end
