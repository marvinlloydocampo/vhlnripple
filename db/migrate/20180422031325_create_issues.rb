class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.string :client_name, null: false, default: ''
      t.integer :issue_type_id
      t.integer :assigned_developer_id
      t.integer :assigned_tester_id
      t.integer :cycle_count
      t.integer :days_per_cycle
      t.datetime :release_date
      t.integer :status_id

      t.timestamps
    end
  end
end
