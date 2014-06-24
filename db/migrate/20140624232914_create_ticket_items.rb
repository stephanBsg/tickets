class CreateTicketItems < ActiveRecord::Migration
  def change
    create_table :ticket_items do |t|
      t.string :name
      t.date :created_on
      t.date :assigned_on
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
