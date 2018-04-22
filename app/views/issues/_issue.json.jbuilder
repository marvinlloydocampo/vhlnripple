json.extract! issue, :id, :client_name, :issue_type_id, :assigned_developer_id, :assigned_tester_id, :cycle_count, :days_per_cycle, :release_date, :status_id, :created_at, :updated_at
json.url issue_url(issue, format: :json)
