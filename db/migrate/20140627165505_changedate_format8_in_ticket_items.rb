class ChangedateFormat8InTicketItems < ActiveRecord::Migration
  def change
    add_column :ticket_items, :created_on, :datetime
  end
end
