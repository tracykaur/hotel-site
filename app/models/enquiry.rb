class Enquiry < ApplicationRecord
  def contact
      @enquiry = Enquiry.all
      @enquiry = Enquiry.new
    end
    def create
      @enquiry = Enquiry.create(post_params)
      redirect_to '/'
    end


  private

  def post_params
    params.require(:enquiry).permit(:name, :email, :phone, :message)
  end

  end
