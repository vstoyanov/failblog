class Publication < ActiveRecord::Base
  belongs_to :parent, :class_name => 'Publication', :foreign_key => 'parent_id'

  has_many :children, :class_name => 'Publication', :foreign_key => 'parent_id'

  has_many :comments

  has_and_belongs_to_many :categories

  attr_accessible :content, :title, :list_page, :comments_allowed, :live

  validates_presence_of :content, :title

end
