class ContentDeliveryController < ApplicationController
  def deliver
    publication_id = params[:publication]

    if publication_id.blank?
      @publication = Publication.where(:parent_id =>  null)
    elsif publication_id.instance_of? Numeric
      @publication = Publication.find(publication_id)
    elsif publication_id.instance_of? String
      @publication = Publication.where("title LIKE ?", "%#{@publication_id}%")

    else
      # No fuckin idea what to do => 404 - point to index
    end

    respond_to do |format|
      format.html  render :template => @publication.list_page? ?
          'content_delivery/display_blog' : 'content_delivery/display_plain'
      format.json { render json: @publication }
    end

  end
end
