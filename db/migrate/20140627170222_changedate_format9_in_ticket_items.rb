class ChangedateFormat9InTicketItems < ActiveRecord::Migration
  def change
   add_column :ticket_items, :assigned_on, :datetime
  end
end
