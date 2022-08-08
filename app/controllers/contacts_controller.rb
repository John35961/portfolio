class ContactsController < ApplicationController
  skip_before_action :authenticate_admin!

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:success] = t_scoped(:success).capitalize
    else
      flash[:error] = t_scoped(:error).capitalize
    end
    redirect_back(fallback_location: root_path)
  end
end
