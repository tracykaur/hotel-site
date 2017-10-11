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

  def create
    @enquiry = Enquiry.create(post_params)
    redirect_to '/', notice: 'Message was successfully sent.'
  end


  private

  def post_params
    params.require(:enquiry).permit(:name, :email, :phone, :message)
  end


end
