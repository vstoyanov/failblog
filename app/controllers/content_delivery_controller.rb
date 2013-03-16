class ContentDeliveryController < ApplicationController

  def deliver
    publication_id = params[:publication]
    @publication = Publication.find_by_soft_id(publication_id)

    respond_to do |format|
      format.html  {render :template => @publication.list_page? ?
          'content_delivery/display_blog' : 'content_delivery/display_plain'}
      format.json { render json: @publication }
    end

  end
end
