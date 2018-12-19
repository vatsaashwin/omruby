json.extract! event, :id, :eventkey_id, :event, :description, :created_at, :updated_at
json.url event_url(event, format: :json)
