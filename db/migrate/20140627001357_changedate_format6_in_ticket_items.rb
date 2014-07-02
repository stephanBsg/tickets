class ChangedateFormat6InTicketItems < ActiveRecord::Migration
  def up
   remove_column :ticket_items, :assigned_on
  end

  def down
   add_column :ticket_items, :assigned_on, :datetime
  end
end

