class PagesController < ApplicationController
  def home
  end

  def rooms
    @rooms = Room.all
  end

  def contact
    @enquiry = Enquiry.all
    @enquiry = Enquiry.new
  end

  def about
  end

end
