json.array!(@ticket_items) do |ticket_item|
  json.extract! ticket_item, :name, :created_on, :assigned_on, :description, :user_id
  json.url ticket_item_url(ticket_item, format: :json)
end