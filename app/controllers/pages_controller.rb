class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
   @ticket_item = TicketItem.new
  end

  def about
  end

  def contact
  end
end
