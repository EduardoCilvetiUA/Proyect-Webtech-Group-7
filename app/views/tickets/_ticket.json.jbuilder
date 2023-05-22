json.extract! ticket, :id, :ticket_id, :user_id, :executive_id, :supervisor_id, :title, :description, :priority, :due_date, :status, :star_rating, :comment, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
