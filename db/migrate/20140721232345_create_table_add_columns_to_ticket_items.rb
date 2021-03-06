class CreateTableAddColumnsToTicketItems < ActiveRecord::Migration
  def change
    create_table "ticket_items", :force => true do |t|
     t.string :name
     t.string :description
     t.integer :user_id
     t.datetime :created_at
     t.datetime :updated_at
     t.datetime :finished_on
     t.datetime :created_on
     t.datetime :assigned_on
     t.string :street
     t.string :city
     t.string :State
     t.string :zipcode
     t.string :mainstreet
     t.string :crossingstreet
     t.string :intersectionnum               
    end
  end
end


