class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contacts.save
      redirect_to contact_path
      flash[:notice] = "Votre demande de contact est envoyé"
    else
      render :new, status: :unprocessable_entity
      flash[:error] = "Votre demande n'a pas pu être transmise"
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :brand, :website, :budget, :start_time, :deadline, :asked_items, :informations)
  end
end
