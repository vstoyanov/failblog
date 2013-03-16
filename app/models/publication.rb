class Publication < ActiveRecord::Base
  belongs_to :parent, :class_name => 'Publication', :foreign_key => 'parent_id'

  has_many :children, :class_name => 'Publication', :foreign_key => 'parent_id'

  has_many :comments

  has_and_belongs_to_many :categories

  attr_accessible :content, :title, :list_page, :comments_allowed, :live

  validates_presence_of :content, :title
  class << self

    def find_by_soft_id(publication_id)

      if publication_id.to_i.to_s == publication_id
        publication = Publication.find(publication_id)

      elsif !publication_id.blank?
        publication = Publication.where("title LIKE ?", "%#{@publication_id}%")

      else
          publication = Publication.where("my_id IS ?", nil)
      end

      publication
    end

  end

end
