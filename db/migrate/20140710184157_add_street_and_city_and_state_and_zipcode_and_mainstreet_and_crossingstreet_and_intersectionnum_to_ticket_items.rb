class AddStreetAndCityAndStateAndZipcodeAndMainstreetAndCrossingstreetAndIntersectionnumToTicketItems < ActiveRecord::Migration
  def change
    add_column :ticket_items, :street, :string
    add_column :ticket_items, :city, :string
    add_column :ticket_items, :state, :string
    add_column :ticket_items, :zipcode, :string
    add_column :ticket_items, :mainstreet, :string
    add_column :ticket_items, :crossingstreet, :string
    add_column :ticket_items, :intersectionnum, :string
  end
end
