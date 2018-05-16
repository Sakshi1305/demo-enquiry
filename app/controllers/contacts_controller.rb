class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = "Thank you for submitting the enquiry form. A Thrillophilia representative will be contacting you shortly."
      redirect_back(fallback_location: root_path)
    else
      # flash[:notice] = "Something went wrong!"
    end
  end

  private
   def contact_params
    params.require(:contact).permit(:first_name,
    :last_name,:email, :age, :phone_number, :message)
  end
end
