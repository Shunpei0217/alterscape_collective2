class HomeController < ApplicationController
  def index
    @contact = Contact.new
    render :action => 'index'
  end

  def confirm
    @contact = Contact.new(contact_params)
    if @contact.valid?
      render :action => 'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
    @contact = Contact.new(contact_params)
    if params[:back]
      render :action => 'index'
    else
      ContactMailer.received_email(@contact).deliver
      render :action => 'thanks'
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :email, :subject, :message)
    end
end
