json.extract! report, :id, :report_id, :supervisor_id, :report_type, :date, :data, :created_at, :updated_at
json.url report_url(report, format: :json)
