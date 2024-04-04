class PagesController < ApplicationController
  def a_propos
  end

  def projets
  end

  def services
  end

  def contact
    @contact = Contact.new
  end
end
