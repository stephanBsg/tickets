class PagesController < ApplicationController
  def home
   @ticket_item = TicketItem.new
  end

  def about
  end

  def contact
  end
end
