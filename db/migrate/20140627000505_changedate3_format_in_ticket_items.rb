class ChangedateFormat2InTicketItems < ActiveRecord::Migration
  def up
   remove_column :ticket_items, :create_on
  end

  def down
   add_column :ticket_items, :create_on, :datetime
  end
end

