class Comment < ActiveRecord::Base
  belongs_to :publication
  attr_accessible :email, :name, :text
end
