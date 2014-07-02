class ChangedateFormat5InTicketItems < ActiveRecord::Migration
  def up
   remove_column :ticket_items, :created_on
  end

  def down
   add_column :ticket_items, :created_on, :datetime
  end
end

