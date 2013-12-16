class Admin::AdminController < ApplicationController
  layout 'admin'


  def display

    respond_to do |format|
      format.html  {render :template => 'admin/display_admin'}
    end

  end

end